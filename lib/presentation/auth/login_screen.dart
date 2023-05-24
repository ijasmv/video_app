import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:video_app/application/auth/auth_bloc.dart';
import 'package:video_app/application/core/constants/app_colors.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';
import 'package:video_app/presentation/auth/otp_screen.dart';
import 'package:video_app/presentation/video/video_screen.dart';
import 'package:video_app/presentation/widgets/custom_textfield.dart';
import 'package:video_app/presentation/widgets/submit_btn.dart';
import 'package:video_app/presentation/widgets/utils.dart';

import '../../application/core/constants/ui_constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController mobileCntl = TextEditingController();
  final TextEditingController otpCntl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (ctx, state) {
        if (!state.isLoading) {
          if (state.authResponse.status == const AuthStatus.otpSent()) {
            Fluttertoast.showToast(msg: "Otp Sent!");
            // ScaffoldMessenger.of(context)   .showSnackBar(const SnackBar(content: Text("Otp Sent!")));
          } else if (state.authResponse.status == const AuthStatus.otpFailed()) {
            Fluttertoast.showToast(msg: "Failed to sent otp");
            // ScaffoldMessenger.of(context) .showSnackBar(const SnackBar(content: Text("Failed to sent otp")));
          } else if (state.authResponse.status == const AuthStatus.authenticated()) {
            Fluttertoast.showToast(msg: "Login Success!");
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (ctx) => VideoScreen()));
            // ScaffoldMessenger.of(context)  .showSnackBar(const SnackBar(content: Text("Login Success!!")));
          } else if (state.authResponse.status == const AuthStatus.authFailed()) {
            Fluttertoast.showToast(msg: "Failed to authenticate");
            // ScaffoldMessenger.of(context) .showSnackBar(const SnackBar(content: Text("Failed to authenticate")));
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPageHPadding),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // verticalSpace(50),
                  // const CircleAvatar(
                  //   radius: 50,
                  //   child: Icon(
                  //     Icons.login_rounded,
                  //     color: AppColors.white,
                  //     size: 50,
                  //   ),
                  // ),
                  verticalSpace(50),
                  CustomTextfield(
                    label: "Mobile Number",
                    controller: mobileCntl,
                    autoFocus: true,
                    keyboardType: TextInputType.phone,
                  ),
                  verticalSpace(20),
                  const Text(
                    "Enter the OTP",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 12,
                    ),
                  ),
                  verticalSpace(5),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    controller: otpCntl,
                    autoFocus: true,
                    onChanged: (value) {},
                    pinTheme: PinTheme(
                      // shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldWidth: 50,
                      fieldHeight: 60,
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.primaryColor,
                    ),
                  ),
                  verticalSpace(20),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : SubmitBtn(
                              label: "Verify",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  if (state.authResponse.status ==
                                      const AuthStatus.otpSent()) {
                                    context.read<AuthBloc>().add(VerifyOtp(otp: otpCntl.text));
                                  } else {
                                    context
                                        .read<AuthBloc>()
                                        .add(VerifyMobile(mobile: mobileCntl.text));
                                  }
                                }
                                // Navigator.push(
                                //     context, MaterialPageRoute(builder: (ctx) => const OtpScreen()));
                              },
                            );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
