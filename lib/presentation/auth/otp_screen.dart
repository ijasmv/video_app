import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:video_app/application/core/constants/app_colors.dart';
import 'package:video_app/application/core/constants/ui_constants.dart';
import 'package:video_app/presentation/video/video_screen.dart';
import 'package:video_app/presentation/widgets/submit_btn.dart';
import 'package:video_app/presentation/widgets/utils.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter OTP"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPageHPadding),
        child: Column(
          children: [
            verticalSpace(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                autoFocus: true,
                onChanged: (value) {},
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldWidth: 60,
                  fieldHeight: 60,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.primaryColor,
                ),
              ),
            ),
            verticalSpace(15),
            SubmitBtn(
              label: "Verify",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => VideoScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
