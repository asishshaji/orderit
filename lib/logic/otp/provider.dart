import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:orderit/constants.dart';
import 'package:orderit/logic/otp/state.dart';
import 'package:orderit/models/submit_phone.dart';
import 'package:orderit/repositories/otp_repository.dart';

part 'notifier.dart';

final _otpRepositoryProvider = Provider<IOtpRepository>(
  (ref) => OtpRepository(),
);

final otpNotifierProvier = StateNotifierProvider<OtpNotifer, OtpState>(
  (ref) => OtpNotifer(
    otpRepository: ref.watch(_otpRepositoryProvider),
  ),
);
