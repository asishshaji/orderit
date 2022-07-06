import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

extension OtpGetters on OtpState {
  bool get isWaiting => this is _OtpStateWaiting;
}

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _OtpStateInitial;
  const factory OtpState.waiting([String? phone]) = _OtpStateWaiting;
  const factory OtpState.success() = _OtpStateSuccess;
  const factory OtpState.error([String? error]) = _OtpStateError;
}
