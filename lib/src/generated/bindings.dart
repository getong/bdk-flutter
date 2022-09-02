// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports

import 'dart:convert';
import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

part 'bindings.freezed.dart';

abstract class Rust {
  Future<void> walletInit(
      {required String descriptor,
      required String changeDescriptor,
      required String network,
      required String blockchain,
      required String url,
      required String socks5OrProxy,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletInitConstMeta;

  Future<BdkFlutterWallet> getWallet({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetWalletConstMeta;

  Future<String> generateSeedFromEntropy(
      {required String entropy, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGenerateSeedFromEntropyConstMeta;

  Future<String> generateSeedFromWordCount(
      {required String wordCount, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGenerateSeedFromWordCountConstMeta;

  Future<String> getXpub(
      {required String nodeNetwork,
      required String mnemonic,
      String? password,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetXpubConstMeta;

  Future<String> getXpubFromAddress({required String address, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetXpubFromAddressConstMeta;

  Future<ExtendedKeyInfo> createKey(
      {required String nodeNetwork,
      required String mnemonic,
      String? password,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateKeyConstMeta;

  Future<void> syncWallet({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSyncWalletConstMeta;

  Future<int> getBalance({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetBalanceConstMeta;

  Future<String> getNewAddress({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetNewAddressConstMeta;

  Future<String> getLastUnusedAddress({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetLastUnusedAddressConstMeta;

  Future<List<Transaction>> getTransactions({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetTransactionsConstMeta;

  Future<String> createTransaction(
      {required String recipient,
      required int amount,
      required double feeRate,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateTransactionConstMeta;

  Future<String> signAndBroadcast({required String psbtStr, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSignAndBroadcastConstMeta;

  Future<void> sign({required String psbtStr, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSignConstMeta;

  Future<String> broadcast({required String psbtStr, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBroadcastConstMeta;
}

class BdkFlutterWallet {
  final int balance;
  final String address;

  BdkFlutterWallet({
    required this.balance,
    required this.address,
  });
}

class BlockConfirmationTime {
  final int height;
  final int timestamp;

  BlockConfirmationTime({
    required this.height,
    required this.timestamp,
  });
}

class ExtendedKeyInfo {
  final String mnemonic;
  final String xprv;
  final String fingerprint;

  ExtendedKeyInfo({
    required this.mnemonic,
    required this.xprv,
    required this.fingerprint,
  });
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction.unconfirmed({
    required TransactionDetails details,
  }) = Unconfirmed;
  const factory Transaction.confirmed({
    required TransactionDetails details,
    required BlockConfirmationTime confirmation,
  }) = Confirmed;
}

class TransactionDetails {
  final int? fee;
  final int received;
  final int sent;
  final String txid;

  TransactionDetails({
    this.fee,
    required this.received,
    required this.sent,
    required this.txid,
  });
}

class RustImpl extends FlutterRustBridgeBase<RustWire> implements Rust {
  factory RustImpl(ffi.DynamicLibrary dylib) => RustImpl.raw(RustWire(dylib));

  RustImpl.raw(RustWire inner) : super(inner);

  Future<void> walletInit(
          {required String descriptor,
          required String changeDescriptor,
          required String network,
          required String blockchain,
          required String url,
          required String socks5OrProxy,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_wallet_init(
            port_,
            _api2wire_String(descriptor),
            _api2wire_String(changeDescriptor),
            _api2wire_String(network),
            _api2wire_String(blockchain),
            _api2wire_String(url),
            _api2wire_String(socks5OrProxy)),
        parseSuccessData: _wire2api_unit,
        constMeta: kWalletInitConstMeta,
        argValues: [
          descriptor,
          changeDescriptor,
          network,
          blockchain,
          url,
          socks5OrProxy
        ],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kWalletInitConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_init",
        argNames: [
          "descriptor",
          "changeDescriptor",
          "network",
          "blockchain",
          "url",
          "socks5OrProxy"
        ],
      );

  Future<BdkFlutterWallet> getWallet({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_wallet(port_),
        parseSuccessData: _wire2api_bdk_flutter_wallet,
        constMeta: kGetWalletConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetWalletConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_wallet",
        argNames: [],
      );

  Future<String> generateSeedFromEntropy(
          {required String entropy, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_generate_seed_from_entropy(
            port_, _api2wire_String(entropy)),
        parseSuccessData: _wire2api_String,
        constMeta: kGenerateSeedFromEntropyConstMeta,
        argValues: [entropy],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGenerateSeedFromEntropyConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "generate_seed_from_entropy",
        argNames: ["entropy"],
      );

  Future<String> generateSeedFromWordCount(
          {required String wordCount, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_generate_seed_from_word_count(
            port_, _api2wire_String(wordCount)),
        parseSuccessData: _wire2api_String,
        constMeta: kGenerateSeedFromWordCountConstMeta,
        argValues: [wordCount],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGenerateSeedFromWordCountConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "generate_seed_from_word_count",
        argNames: ["wordCount"],
      );

  Future<String> getXpub(
          {required String nodeNetwork,
          required String mnemonic,
          String? password,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_xpub(
            port_,
            _api2wire_String(nodeNetwork),
            _api2wire_String(mnemonic),
            _api2wire_opt_String(password)),
        parseSuccessData: _wire2api_String,
        constMeta: kGetXpubConstMeta,
        argValues: [nodeNetwork, mnemonic, password],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetXpubConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_xpub",
        argNames: ["nodeNetwork", "mnemonic", "password"],
      );

  Future<String> getXpubFromAddress({required String address, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_get_xpub_from_address(port_, _api2wire_String(address)),
        parseSuccessData: _wire2api_String,
        constMeta: kGetXpubFromAddressConstMeta,
        argValues: [address],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetXpubFromAddressConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_xpub_from_address",
        argNames: ["address"],
      );

  Future<ExtendedKeyInfo> createKey(
          {required String nodeNetwork,
          required String mnemonic,
          String? password,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_create_key(
            port_,
            _api2wire_String(nodeNetwork),
            _api2wire_String(mnemonic),
            _api2wire_opt_String(password)),
        parseSuccessData: _wire2api_extended_key_info,
        constMeta: kCreateKeyConstMeta,
        argValues: [nodeNetwork, mnemonic, password],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kCreateKeyConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "create_key",
        argNames: ["nodeNetwork", "mnemonic", "password"],
      );

  Future<void> syncWallet({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_sync_wallet(port_),
        parseSuccessData: _wire2api_unit,
        constMeta: kSyncWalletConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSyncWalletConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "sync_wallet",
        argNames: [],
      );

  Future<int> getBalance({dynamic hint}) => executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_balance(port_),
        parseSuccessData: _wire2api_u64,
        constMeta: kGetBalanceConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetBalanceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_balance",
        argNames: [],
      );

  Future<String> getNewAddress({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_new_address(port_),
        parseSuccessData: _wire2api_String,
        constMeta: kGetNewAddressConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetNewAddressConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_new_address",
        argNames: [],
      );

  Future<String> getLastUnusedAddress({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_last_unused_address(port_),
        parseSuccessData: _wire2api_String,
        constMeta: kGetLastUnusedAddressConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetLastUnusedAddressConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_last_unused_address",
        argNames: [],
      );

  Future<List<Transaction>> getTransactions({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_transactions(port_),
        parseSuccessData: _wire2api_list_transaction,
        constMeta: kGetTransactionsConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetTransactionsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_transactions",
        argNames: [],
      );

  Future<String> createTransaction(
          {required String recipient,
          required int amount,
          required double feeRate,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_create_transaction(
            port_,
            _api2wire_String(recipient),
            _api2wire_u64(amount),
            _api2wire_f32(feeRate)),
        parseSuccessData: _wire2api_String,
        constMeta: kCreateTransactionConstMeta,
        argValues: [recipient, amount, feeRate],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kCreateTransactionConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "create_transaction",
        argNames: ["recipient", "amount", "feeRate"],
      );

  Future<String> signAndBroadcast({required String psbtStr, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_sign_and_broadcast(port_, _api2wire_String(psbtStr)),
        parseSuccessData: _wire2api_String,
        constMeta: kSignAndBroadcastConstMeta,
        argValues: [psbtStr],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSignAndBroadcastConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "sign_and_broadcast",
        argNames: ["psbtStr"],
      );

  Future<void> sign({required String psbtStr, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_sign(port_, _api2wire_String(psbtStr)),
        parseSuccessData: _wire2api_unit,
        constMeta: kSignConstMeta,
        argValues: [psbtStr],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSignConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "sign",
        argNames: ["psbtStr"],
      );

  Future<String> broadcast({required String psbtStr, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_broadcast(port_, _api2wire_String(psbtStr)),
        parseSuccessData: _wire2api_String,
        constMeta: kBroadcastConstMeta,
        argValues: [psbtStr],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kBroadcastConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "broadcast",
        argNames: ["psbtStr"],
      );

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  double _api2wire_f32(double raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : _api2wire_String(raw);
  }

  int _api2wire_u64(int raw) {
    return raw;
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

BdkFlutterWallet _wire2api_bdk_flutter_wallet(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2)
    throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return BdkFlutterWallet(
    balance: _wire2api_u64(arr[0]),
    address: _wire2api_String(arr[1]),
  );
}

BlockConfirmationTime _wire2api_block_confirmation_time(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2)
    throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return BlockConfirmationTime(
    height: _wire2api_u32(arr[0]),
    timestamp: _wire2api_u64(arr[1]),
  );
}

BlockConfirmationTime _wire2api_box_autoadd_block_confirmation_time(
    dynamic raw) {
  return _wire2api_block_confirmation_time(raw);
}

TransactionDetails _wire2api_box_autoadd_transaction_details(dynamic raw) {
  return _wire2api_transaction_details(raw);
}

int _wire2api_box_autoadd_u64(dynamic raw) {
  return raw as int;
}

ExtendedKeyInfo _wire2api_extended_key_info(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 3)
    throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
  return ExtendedKeyInfo(
    mnemonic: _wire2api_String(arr[0]),
    xprv: _wire2api_String(arr[1]),
    fingerprint: _wire2api_String(arr[2]),
  );
}

List<Transaction> _wire2api_list_transaction(dynamic raw) {
  return (raw as List<dynamic>).map(_wire2api_transaction).toList();
}

int? _wire2api_opt_box_autoadd_u64(dynamic raw) {
  return raw == null ? null : _wire2api_box_autoadd_u64(raw);
}

Transaction _wire2api_transaction(dynamic raw) {
  switch (raw[0]) {
    case 0:
      return Unconfirmed(
        details: _wire2api_box_autoadd_transaction_details(raw[1]),
      );
    case 1:
      return Confirmed(
        details: _wire2api_box_autoadd_transaction_details(raw[1]),
        confirmation: _wire2api_box_autoadd_block_confirmation_time(raw[2]),
      );
    default:
      throw Exception("unreachable");
  }
}

TransactionDetails _wire2api_transaction_details(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 4)
    throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
  return TransactionDetails(
    fee: _wire2api_opt_box_autoadd_u64(arr[0]),
    received: _wire2api_u64(arr[1]),
    sent: _wire2api_u64(arr[2]),
    txid: _wire2api_String(arr[3]),
  );
}

int _wire2api_u32(dynamic raw) {
  return raw as int;
}

int _wire2api_u64(dynamic raw) {
  return raw as int;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

void _wire2api_unit(dynamic raw) {
  return;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class RustWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_wallet_init(
    int port_,
    ffi.Pointer<wire_uint_8_list> descriptor,
    ffi.Pointer<wire_uint_8_list> change_descriptor,
    ffi.Pointer<wire_uint_8_list> network,
    ffi.Pointer<wire_uint_8_list> blockchain,
    ffi.Pointer<wire_uint_8_list> url,
    ffi.Pointer<wire_uint_8_list> socks5_or_proxy,
  ) {
    return _wire_wallet_init(
      port_,
      descriptor,
      change_descriptor,
      network,
      blockchain,
      url,
      socks5_or_proxy,
    );
  }

  late final _wire_wallet_initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_wallet_init');
  late final _wire_wallet_init = _wire_wallet_initPtr.asFunction<
      void Function(
          int,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_wallet(
    int port_,
  ) {
    return _wire_get_wallet(
      port_,
    );
  }

  late final _wire_get_walletPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_wallet');
  late final _wire_get_wallet =
      _wire_get_walletPtr.asFunction<void Function(int)>();

  void wire_generate_seed_from_entropy(
    int port_,
    ffi.Pointer<wire_uint_8_list> entropy,
  ) {
    return _wire_generate_seed_from_entropy(
      port_,
      entropy,
    );
  }

  late final _wire_generate_seed_from_entropyPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_generate_seed_from_entropy');
  late final _wire_generate_seed_from_entropy =
      _wire_generate_seed_from_entropyPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_generate_seed_from_word_count(
    int port_,
    ffi.Pointer<wire_uint_8_list> word_count,
  ) {
    return _wire_generate_seed_from_word_count(
      port_,
      word_count,
    );
  }

  late final _wire_generate_seed_from_word_countPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_generate_seed_from_word_count');
  late final _wire_generate_seed_from_word_count =
      _wire_generate_seed_from_word_countPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_xpub(
    int port_,
    ffi.Pointer<wire_uint_8_list> node_network,
    ffi.Pointer<wire_uint_8_list> mnemonic,
    ffi.Pointer<wire_uint_8_list> password,
  ) {
    return _wire_get_xpub(
      port_,
      node_network,
      mnemonic,
      password,
    );
  }

  late final _wire_get_xpubPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_xpub');
  late final _wire_get_xpub = _wire_get_xpubPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_xpub_from_address(
    int port_,
    ffi.Pointer<wire_uint_8_list> address,
  ) {
    return _wire_get_xpub_from_address(
      port_,
      address,
    );
  }

  late final _wire_get_xpub_from_addressPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_xpub_from_address');
  late final _wire_get_xpub_from_address = _wire_get_xpub_from_addressPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_create_key(
    int port_,
    ffi.Pointer<wire_uint_8_list> node_network,
    ffi.Pointer<wire_uint_8_list> mnemonic,
    ffi.Pointer<wire_uint_8_list> password,
  ) {
    return _wire_create_key(
      port_,
      node_network,
      mnemonic,
      password,
    );
  }

  late final _wire_create_keyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_create_key');
  late final _wire_create_key = _wire_create_keyPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_sync_wallet(
    int port_,
  ) {
    return _wire_sync_wallet(
      port_,
    );
  }

  late final _wire_sync_walletPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_sync_wallet');
  late final _wire_sync_wallet =
      _wire_sync_walletPtr.asFunction<void Function(int)>();

  void wire_get_balance(
    int port_,
  ) {
    return _wire_get_balance(
      port_,
    );
  }

  late final _wire_get_balancePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_balance');
  late final _wire_get_balance =
      _wire_get_balancePtr.asFunction<void Function(int)>();

  void wire_get_new_address(
    int port_,
  ) {
    return _wire_get_new_address(
      port_,
    );
  }

  late final _wire_get_new_addressPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_new_address');
  late final _wire_get_new_address =
      _wire_get_new_addressPtr.asFunction<void Function(int)>();

  void wire_get_last_unused_address(
    int port_,
  ) {
    return _wire_get_last_unused_address(
      port_,
    );
  }

  late final _wire_get_last_unused_addressPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_last_unused_address');
  late final _wire_get_last_unused_address =
      _wire_get_last_unused_addressPtr.asFunction<void Function(int)>();

  void wire_get_transactions(
    int port_,
  ) {
    return _wire_get_transactions(
      port_,
    );
  }

  late final _wire_get_transactionsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_transactions');
  late final _wire_get_transactions =
      _wire_get_transactionsPtr.asFunction<void Function(int)>();

  void wire_create_transaction(
    int port_,
    ffi.Pointer<wire_uint_8_list> recipient,
    int amount,
    double fee_rate,
  ) {
    return _wire_create_transaction(
      port_,
      recipient,
      amount,
      fee_rate,
    );
  }

  late final _wire_create_transactionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Uint64, ffi.Float)>>('wire_create_transaction');
  late final _wire_create_transaction = _wire_create_transactionPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>, int, double)>();

  void wire_sign_and_broadcast(
    int port_,
    ffi.Pointer<wire_uint_8_list> psbt_str,
  ) {
    return _wire_sign_and_broadcast(
      port_,
      psbt_str,
    );
  }

  late final _wire_sign_and_broadcastPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_sign_and_broadcast');
  late final _wire_sign_and_broadcast = _wire_sign_and_broadcastPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_sign(
    int port_,
    ffi.Pointer<wire_uint_8_list> psbt_str,
  ) {
    return _wire_sign(
      port_,
      psbt_str,
    );
  }

  late final _wire_signPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_sign');
  late final _wire_sign = _wire_signPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_broadcast(
    int port_,
    ffi.Pointer<wire_uint_8_list> psbt_str,
  ) {
    return _wire_broadcast(
      port_,
      psbt_str,
    );
  }

  late final _wire_broadcastPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_broadcast');
  late final _wire_broadcast = _wire_broadcastPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;