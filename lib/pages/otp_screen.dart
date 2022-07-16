import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:orderit/logic/otp/provider.dart';
import 'package:orderit/logic/otp/state.dart';
import 'package:orderit/pages/home_screen.dart';
import 'package:orderit/widgets/otp_widget.dart';
import 'package:orderit/widgets/phone_widget.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(otpNotifierProvier);

    String heading = "";
    if (state == const OtpState.initial()) {
      heading = "Enter your phone number";
    } else if (state == const OtpState.success()) {
      heading = "Otp verified";
    } else if (state == const OtpState.waiting()) {
      heading = "Enter your otp";
    }

    return Scaffold(
      body: Column(
        children: [
          Text(heading),
          state.when(
            initial: () => const PhoneWidget(),
            waiting: (phone) => OtpWidget(phone: phone),
            success: () {
              return const SuccessWidget();
            },
            error: (e) => Text(e.toString()),
          ),
        ],
      ),
    );
  }
}

class SuccessWidget extends StatefulWidget {
  const SuccessWidget({Key? key}) : super(key: key);

  @override
  State<SuccessWidget> createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Home(),
        ),
      ),
    );

    return Container();
  }
}
