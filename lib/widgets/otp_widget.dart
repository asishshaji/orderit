import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:orderit/constants.dart';
import 'package:orderit/logic/otp/provider.dart';

class OtpWidget extends ConsumerStatefulWidget {
  String? phone;
  OtpWidget({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends ConsumerState<OtpWidget> {
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (data) {
            setState(() {
              otp = data;
            });
          },
        ),
        TextButton(
          onPressed: () async => await ref.read(otpNotifierProvier.notifier).verifyOtp(
                TEST_PHONE_NUMBER,
                otp,
              ),
          child: const Text("Submit OTP"),
        )
      ],
    );
  }
}
