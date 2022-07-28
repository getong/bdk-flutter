use crate::ffi::{
    generate_extended_key, restore_extended_key, AddressIndex, Blockchain, BlockchainConfig,
    ElectrumConfig, EsploraConfig, ExtendedKeyInfo, PartiallySignedBitcoinTransaction, Transaction,
    TxBuilder, Wallet,
};
use std::ops::Deref;
// use anyhow::{anyhow, Result};
use bdk::bitcoin::{base64, Network};
use bdk::blockchain::esplora::EsploraBlockchainConfig;
use bdk::blockchain::{
    AnyBlockchain, AnyBlockchainConfig, Blockchain as BdkBlockChain, ConfigurableBlockchain,
    ElectrumBlockchain, ElectrumBlockchainConfig, EsploraBlockchain,
};
use bdk::electrum_client::Client;
use bdk::wallet::tx_builder;
use lazy_static::lazy_static;
use std::sync::RwLock;

lazy_static! {
    static ref WALLET: RwLock<Wallet> = RwLock::new(Wallet::default());
    static ref BLOCKCHAIN: RwLock<AnyBlockchain> = RwLock::new(default_blockchain());
}
fn config_network(network: String) -> Network {
    return match network.as_str() {
        "SIGNET" => Network::Signet,
        "TESTNET" => Network::Testnet,
        "REGTEST" => Network::Regtest,
        "BITCOIN" => Network::Bitcoin,
        _ => Network::Testnet,
    };
}
fn default_blockchain() -> AnyBlockchain {
    let config = AnyBlockchainConfig::Electrum(ElectrumBlockchainConfig {
        url: "ssl://electrum.blockstream.info:60002".into(),
        retry: 2,
        socks5: None,
        timeout: None,
        stop_gap: 20,
    });
    return AnyBlockchain::from_config(&config).unwrap();
}
fn config_blockchain(blockchain: &str, url: String, socks5_or_proxy: Option<String>) -> AnyBlockchain {
    return match blockchain {
        "ELECTRUM" => {
            let config = AnyBlockchainConfig::Electrum(ElectrumBlockchainConfig {
                url: url.into(),
                retry: 2,
                socks5:None,
                timeout: None,
                stop_gap: 20,
            });
            AnyBlockchain::from_config(&config).unwrap()
        }
        "ESPLORA" => {
            let config = AnyBlockchainConfig::Esplora(EsploraBlockchainConfig {
                base_url: url.to_string(),
                proxy: None,
                timeout: None,
                stop_gap: 20,
                concurrency: None,
            });
            AnyBlockchain::from_config(&config).unwrap()
        }
        &_ => {
            let config = AnyBlockchainConfig::Electrum(ElectrumBlockchainConfig {
                url: url.into(),
                retry: 2,
                socks5: None,
                timeout: None,
                stop_gap: 20,
            });
            AnyBlockchain::from_config(&config).unwrap()
        }
    };
}

fn blockchain_init(blockchain: &str, url: String, socks5: Option<String>) {
    let blockchain = config_blockchain(blockchain, url, socks5);
    let mut new_blockchain = BLOCKCHAIN.write().unwrap();
    *new_blockchain = blockchain;
}
pub fn wallet_init(
    descriptor: String,
    change_descriptor: String,
    network: String,
    blockchain: String,
    url: String,
    socks5_or_proxy: String,
) {
    let node_network = config_network(network.clone());
    let optional_socks5_or_proxy = if socks5_or_proxy.is_empty() { None} else {Some(socks5_or_proxy)};
    blockchain_init(blockchain.as_str(), url, optional_socks5_or_proxy);
    let wallet = Wallet::new(
        descriptor.clone(),
        Some(change_descriptor.clone()),
        node_network,
    )
    .unwrap();
    let blockchain_obj = BLOCKCHAIN.read().unwrap();
    wallet.sync(blockchain_obj.deref());
    let mut new_wallet = WALLET.write().unwrap();
    *new_wallet = wallet;
}
pub fn generate_key(node_network: String) -> ExtendedKeyInfo {
    let node_network = config_network(node_network);
    let response = generate_extended_key(node_network);
    return response;
}
pub fn restore_key(node_network: String, mnemonic: String) -> ExtendedKeyInfo {
    let node_network = config_network(node_network);
    let response = restore_extended_key(node_network, mnemonic);
    return response;
}

pub fn sync_wallet() {
    let wallet = WALLET.read().unwrap();
    let blockchain_obj = BLOCKCHAIN.read().unwrap();
    // wallet.sync(&blockchain_obj.get_blockchain());
}
pub fn get_balance() -> u64 {
    let res = WALLET.read().unwrap();
    let balance = res.get_balance().unwrap();
    balance
}
pub fn get_new_address() -> String {
    let res = WALLET.read().unwrap();
    let address = res.get_address(AddressIndex::New).unwrap().address;
    address
}
pub fn get_last_unused_address() -> String {
    let res = WALLET.read().unwrap();
    res.get_address(AddressIndex::New).unwrap().address
}

pub fn get_transactions() -> Vec<Transaction> {
    let res = WALLET.read().unwrap();
    let response: Vec<Transaction> = res.get_transactions().unwrap();
    return response;
}
pub fn create_transaction(recipient: String, amount: u64, fee_rate: f32) -> String {
    let res = WALLET.read().unwrap();
    let tx_builder = TxBuilder::new();
    let x = tx_builder
        .add_recipient(recipient, amount)
        .fee_rate(fee_rate)
        .finish(&res);
    x.unwrap().serialize()
}
pub fn sign_and_broadcast(psbt_str: String) -> String {
    let wallet = WALLET.read().unwrap();
    let blockchain = BLOCKCHAIN.read().unwrap();
    let psbt = PartiallySignedBitcoinTransaction::new(psbt_str).unwrap();
    wallet.sign(&psbt).unwrap();
    let tx = psbt.internal.lock().unwrap().clone().extract_tx();
    blockchain.broadcast(&tx).unwrap();
    tx.txid().to_string()
}

#[cfg(test)]
mod tests {
    use crate::api::{wallet_init, BLOCKCHAIN, WALLET};
    use bdk::blockchain::{
        AnyBlockchain, AnyBlockchainConfig, ConfigurableBlockchain, ElectrumBlockchainConfig,
        EsploraBlockchain,
    };
    #[test]
    fn init_wallet() {
        wallet_init(
            "wpkh([c258d2e4/84h/1h/0h]tpubDDYkZojQFQjht8Tm4jsS3iuEmKjTiEGjG6KnuFNKKJb5A6ZUCUZKdvLdSDWofKi4ToRCwb9poe1XdqfUnP4jaJjCB2Zwv11ZLgSbnZSNecE/0/*)".to_string(),
            "wpkh([c258d2e4/84h/1h/0h]tpubDDYkZojQFQjht8Tm4jsS3iuEmKjTiEGjG6KnuFNKKJb5A6ZUCUZKdvLdSDWofKi4ToRCwb9poe1XdqfUnP4jaJjCB2Zwv11ZLgSbnZSNecE/1/*)".to_string(),
            "TESTNET".to_string(),
            "ELECTRUM".to_string(),
            "ssl://electrum.blockstream.info:60002".to_string(),
            "".to_string() );
        let wallet = WALLET.read().unwrap();
        let balance = wallet.get_balance().unwrap();
        assert_eq!(balance, 2450110);
    }
}

//
// #[derive(Serialize, Deserialize, PartialEq, Debug)]
// pub struct BridgeResult {
//     result: String,
//     data: Vec<String>,
// }
//
// impl Default for BridgeResult {
//     fn default() -> BridgeResult {
//         BridgeResult {
//             result: "".to_string(),
//             data: vec!["".to_string()],
//         }
//     }
// }
//
// impl BridgeResult {
//     fn err<E: std::fmt::Debug>(desc: &'static str, err: E) -> BridgeResult {
//         //this should write a log of every error
//         let mut file = OpenOptions::new()
//             .write(true)
//             .append(true)
//             .create(true)
//             .open("log.txt")
//             .expect("failed to open log");
//         let local: DateTime<Local> = Local::now();
//         file.write(format!("{} ///{}: {:?}\n", local.date(), desc, err).as_bytes())
//             .expect("failed to write log");
//         BridgeResult {
//             result: "Err()".to_string(),
//             data: vec![format!("{}: {:?}", desc, err)],
//         }
//     }
//
//     fn ok<D: std::string::ToString>(data: D) -> BridgeResult {
//         BridgeResult {
//             result: "Ok()".to_string(),
//             data: vec![data.to_string()],
//         }
//     }
// }
