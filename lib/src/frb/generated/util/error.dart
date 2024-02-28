// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.25.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../api/types.dart';
import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'error.freezed.dart';

@freezed
sealed class BdkError with _$BdkError implements FrbException {
  const factory BdkError.hexError(
    BitcoinHexError field0,
  ) = BdkError_HexError;
  const factory BdkError.consensusError(
    BitcoinConsensusError field0,
  ) = BdkError_ConsensusError;
  const factory BdkError.addressError(
    BitcoinAddressError field0,
  ) = BdkError_AddressError;
}

@freezed
sealed class BitcoinAddressError with _$BitcoinAddressError {
  const factory BitcoinAddressError.base58(
    String field0,
  ) = BitcoinAddressError_Base58;
  const factory BitcoinAddressError.bech32(
    String field0,
  ) = BitcoinAddressError_Bech32;
  const factory BitcoinAddressError.emptyBech32Payload() =
      BitcoinAddressError_EmptyBech32Payload;
  const factory BitcoinAddressError.invalidBech32Variant({
    required Variant expected,
    required Variant found,
  }) = BitcoinAddressError_InvalidBech32Variant;
  const factory BitcoinAddressError.invalidWitnessVersion(
    int field0,
  ) = BitcoinAddressError_InvalidWitnessVersion;
  const factory BitcoinAddressError.unparsableWitnessVersion(
    String field0,
  ) = BitcoinAddressError_UnparsableWitnessVersion;
  const factory BitcoinAddressError.malformedWitnessVersion() =
      BitcoinAddressError_MalformedWitnessVersion;
  const factory BitcoinAddressError.invalidWitnessProgramLength(
    int field0,
  ) = BitcoinAddressError_InvalidWitnessProgramLength;
  const factory BitcoinAddressError.invalidSegwitV0ProgramLength(
    int field0,
  ) = BitcoinAddressError_InvalidSegwitV0ProgramLength;
  const factory BitcoinAddressError.uncompressedPubkey() =
      BitcoinAddressError_UncompressedPubkey;
  const factory BitcoinAddressError.excessiveScriptSize() =
      BitcoinAddressError_ExcessiveScriptSize;
  const factory BitcoinAddressError.unrecognizedScript() =
      BitcoinAddressError_UnrecognizedScript;
  const factory BitcoinAddressError.unknownAddressType(
    String field0,
  ) = BitcoinAddressError_UnknownAddressType;
  const factory BitcoinAddressError.networkValidation({
    required Network networkRequired,
    required Network networkFound,
    required String address,
  }) = BitcoinAddressError_NetworkValidation;
}

@freezed
sealed class BitcoinConsensusError with _$BitcoinConsensusError {
  const factory BitcoinConsensusError.io(
    String field0,
  ) = BitcoinConsensusError_Io;
  const factory BitcoinConsensusError.oversizedVectorAllocation({
    required int requested,
    required int max,
  }) = BitcoinConsensusError_OversizedVectorAllocation;
  const factory BitcoinConsensusError.invalidChecksum({
    required U8Array4 expected,
    required U8Array4 actual,
  }) = BitcoinConsensusError_InvalidChecksum;
  const factory BitcoinConsensusError.nonMinimalVarInt() =
      BitcoinConsensusError_NonMinimalVarInt;
  const factory BitcoinConsensusError.parseFailed(
    String field0,
  ) = BitcoinConsensusError_ParseFailed;
  const factory BitcoinConsensusError.unsupportedSegwitFlag(
    int field0,
  ) = BitcoinConsensusError_UnsupportedSegwitFlag;
}

@freezed
sealed class BitcoinHexError with _$BitcoinHexError {
  const factory BitcoinHexError.invalidChar(
    int field0,
  ) = BitcoinHexError_InvalidChar;
  const factory BitcoinHexError.oddLengthString(
    int field0,
  ) = BitcoinHexError_OddLengthString;
  const factory BitcoinHexError.invalidLength(
    int field0,
    int field1,
  ) = BitcoinHexError_InvalidLength;
}
