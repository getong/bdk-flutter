// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.25.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../util/error.dart';
import 'descriptor.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'types.dart';

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::rust_async::RwLock<Mutex < bdk :: Wallet < AnyDatabase > >>>
@sealed
class MutexBdkWalletAnyDatabase extends RustOpaque {
  MutexBdkWalletAnyDatabase.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MutexBdkWalletAnyDatabase.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: BdkCore
        .instance.api.rust_arc_increment_strong_count_MutexBdkWalletAnyDatabase,
    rustArcDecrementStrongCount: BdkCore
        .instance.api.rust_arc_decrement_strong_count_MutexBdkWalletAnyDatabase,
    rustArcDecrementStrongCountPtr: BdkCore.instance.api
        .rust_arc_decrement_strong_count_MutexBdkWalletAnyDatabasePtr,
  );
}

/// A Bitcoin wallet.
/// The Wallet acts as a way of coherently interfacing with output descriptors and related transactions. Its main components are:
///     1. Output descriptors from which it can derive addresses.
///     2. A Database where it tracks transactions and utxos related to the descriptors.
///     3. Signers that can contribute signatures to addresses instantiated from the descriptors.
class WalletBase {
  final MutexBdkWalletAnyDatabase ptr;

  const WalletBase({
    required this.ptr,
  });

  static Future<WalletBase> newWalletBase(
          {required DescriptorBase descriptor,
          DescriptorBase? changeDescriptor,
          required Network network,
          required DatabaseConfig databaseConfig,
          dynamic hint}) =>
      BdkCore.instance.api.walletBaseNew(
          descriptor: descriptor,
          changeDescriptor: changeDescriptor,
          network: network,
          databaseConfig: databaseConfig,
          hint: hint);

  @override
  int get hashCode => ptr.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletBase &&
          runtimeType == other.runtimeType &&
          ptr == other.ptr;
}
