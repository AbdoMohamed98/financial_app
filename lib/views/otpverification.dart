import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OtpVerificationview extends StatefulWidget {
  final String phoneNumber; // or email

 const  OtpVerificationview({super.key, required this.phoneNumber});

  @override
  State<OtpVerificationview> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationview> {
  TextEditingController otpController = TextEditingController();
  String currentOtp = "";

  void verifyOtp() {
    // Replace this with your real OTP verification logic
    if (currentOtp == "123456") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("OTP Verified!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Invalid OTP")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify OTP")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter the OTP sent to ${widget.phoneNumber}"),
            SizedBox(height: 20),
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: otpController,
              onChanged: (value) => setState(() => currentOtp = value),
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: verifyOtp,
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}
