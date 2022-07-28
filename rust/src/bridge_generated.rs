#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

use crate::api::*;
use flutter_rust_bridge::*;

// Section: imports

use crate::ffi::BlockConfirmationTime;
use crate::ffi::ExtendedKeyInfo;
use crate::ffi::Transaction;
use crate::ffi::TransactionDetails;

// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_wallet_init(
    port_: i64,
    descriptor: *mut wire_uint_8_list,
    change_descriptor: *mut wire_uint_8_list,
    network: *mut wire_uint_8_list,
    blockchain: *mut wire_uint_8_list,
    url: *mut wire_uint_8_list,
    socks5_or_proxy: *mut wire_uint_8_list,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_init",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_descriptor = descriptor.wire2api();
            let api_change_descriptor = change_descriptor.wire2api();
            let api_network = network.wire2api();
            let api_blockchain = blockchain.wire2api();
            let api_url = url.wire2api();
            let api_socks5_or_proxy = socks5_or_proxy.wire2api();
            move |task_callback| {
                Ok(wallet_init(
                    api_descriptor,
                    api_change_descriptor,
                    api_network,
                    api_blockchain,
                    api_url,
                    api_socks5_or_proxy,
                ))
            }
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_generate_key(port_: i64, node_network: *mut wire_uint_8_list) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "generate_key",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_node_network = node_network.wire2api();
            move |task_callback| Ok(generate_key(api_node_network))
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_restore_key(
    port_: i64,
    node_network: *mut wire_uint_8_list,
    mnemonic: *mut wire_uint_8_list,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "restore_key",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_node_network = node_network.wire2api();
            let api_mnemonic = mnemonic.wire2api();
            move |task_callback| Ok(restore_key(api_node_network, api_mnemonic))
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_sync_wallet(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "sync_wallet",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(sync_wallet()),
    )
}

#[no_mangle]
pub extern "C" fn wire_get_balance(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_balance",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(get_balance()),
    )
}

#[no_mangle]
pub extern "C" fn wire_get_new_address(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_new_address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(get_new_address()),
    )
}

#[no_mangle]
pub extern "C" fn wire_get_last_unused_address(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_last_unused_address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(get_last_unused_address()),
    )
}

#[no_mangle]
pub extern "C" fn wire_get_transactions(port_: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_transactions",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(get_transactions()),
    )
}

#[no_mangle]
pub extern "C" fn wire_create_transaction(
    port_: i64,
    recipient: *mut wire_uint_8_list,
    amount: u64,
    fee_rate: f32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_transaction",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_recipient = recipient.wire2api();
            let api_amount = amount.wire2api();
            let api_fee_rate = fee_rate.wire2api();
            move |task_callback| Ok(create_transaction(api_recipient, api_amount, api_fee_rate))
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_sign_and_broadcast(port_: i64, psbt_str: *mut wire_uint_8_list) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "sign_and_broadcast",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_psbt_str = psbt_str.wire2api();
            move |task_callback| Ok(sign_and_broadcast(api_psbt_str))
        },
    )
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

// Section: wrapper structs

// Section: static checks

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        if self.is_null() {
            None
        } else {
            Some(self.wire2api())
        }
    }
}

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<f32> for f32 {
    fn wire2api(self) -> f32 {
        self
    }
}

impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

// Section: impl IntoDart

impl support::IntoDart for BlockConfirmationTime {
    fn into_dart(self) -> support::DartCObject {
        vec![self.height.into_dart(), self.timestamp.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for BlockConfirmationTime {}

impl support::IntoDart for ExtendedKeyInfo {
    fn into_dart(self) -> support::DartCObject {
        vec![
            self.mnemonic.into_dart(),
            self.xprv.into_dart(),
            self.fingerprint.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for ExtendedKeyInfo {}

impl support::IntoDart for Transaction {
    fn into_dart(self) -> support::DartCObject {
        match self {
            Self::Unconfirmed { details } => vec![0.into_dart(), details.into_dart()],
            Self::Confirmed {
                details,
                confirmation,
            } => vec![1.into_dart(), details.into_dart(), confirmation.into_dart()],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Transaction {}
impl support::IntoDart for TransactionDetails {
    fn into_dart(self) -> support::DartCObject {
        vec![
            self.fee.into_dart(),
            self.received.into_dart(),
            self.sent.into_dart(),
            self.txid.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for TransactionDetails {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturnStruct(val: support::WireSyncReturnStruct) {
    unsafe {
        let _ = support::vec_from_leak_ptr(val.ptr, val.len);
    }
}
