import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_app/application/auth/auth_bloc.dart';
import 'package:video_app/application/core/constants/app_colors.dart';
import 'package:video_app/application/core/constants/ui_constants.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';
import 'package:video_app/presentation/widgets/custom_textfield.dart';
import 'package:video_app/presentation/widgets/submit_btn.dart';
import 'package:video_app/presentation/widgets/utils.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final TextEditingController nameCntl = TextEditingController();
  final TextEditingController emailCntl = TextEditingController();
  final TextEditingController dobCntl = TextEditingController();
  final ValueNotifier<String> image = ValueNotifier<String>("");

  pickImage() async {
    try {
      final imgPicked = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (imgPicked != null) {
        image.value = imgPicked.path;
      }
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    print(context.read<AuthBloc>().state.userData?.photoURL);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authResponse.status == const AuthStatus.profileUpdated()) {
          Fluttertoast.showToast(msg: "Profile Updated!");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPageHPadding),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.userData != null) {
                nameCntl.text = state.userData!.displayName ?? "";
                emailCntl.text = state.userData!.email ?? "";
              }
              return Column(
                children: [
                  verticalSpace(25),
                  ValueListenableBuilder<String>(
                      valueListenable: image,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () {
                            pickImage();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                            ),
                            child: state.userData?.photoURL != null &&
                                    state.userData!.photoURL!.isNotEmpty
                                ? Image.network(
                                    state.userData!.photoURL!,
                                    fit: BoxFit.cover,
                                  )
                                : value.isNotEmpty
                                    ? Image.file(
                                        File(value),
                                        fit: BoxFit.cover,
                                      )
                                    : const Icon(
                                        Icons.person,
                                        size: 50,
                                        color: AppColors.grey,
                                      ),
                          ),
                        );
                      }),
                  verticalSpace(30),
                  CustomTextfield(
                    label: "Name",
                    controller: nameCntl,
                  ),
                  verticalSpace(10),
                  CustomTextfield(
                    label: "Email",
                    controller: emailCntl,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  verticalSpace(15),
                  state.isLoading
                      ? const CircularProgressIndicator()
                      : SubmitBtn(
                          label: "Save",
                          onPressed: () {
                            context.read<AuthBloc>().add(UpdateProfile(
                                  image: image.value,
                                  name: nameCntl.text,
                                  email: emailCntl.text,
                                ));
                          },
                        ),
                ],
              );
            },
          ),
        )),
      ),
    );
  }
}
