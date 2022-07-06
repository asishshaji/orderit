import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:orderit/logic/otp/provider.dart';

class PhoneWidget extends ConsumerStatefulWidget {
  const PhoneWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends ConsumerState<PhoneWidget> {
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (data) {
            setState(() {
              phone = data;
            });
          },
        ),
        TextButton(
          onPressed: () async => await ref.read(otpNotifierProvier.notifier).submitPhone(phone),
          child: const Text("Send OTP"),
        )
      ],
    );
  }
}
