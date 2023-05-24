import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_app/application/core/constants/app_colors.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';
import 'package:video_app/presentation/auth/login_screen.dart';
import 'package:video_app/presentation/widgets/utils.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../application/theme/theme_bloc.dart';
import '../../profile/profile_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});
  // final ValueNotifier<bool> isDarkTheme = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authResponse.status == const AuthStatus.logout()) {
          Fluttertoast.showToast(msg: "Logged out successfully");
        }
      },
      child: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return ListTile(
                    onTap: () {
                      if (state.authenticated) {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (ctx) => ProfileScreen()));
                      } else {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
                      }
                    },
                    title: Text(state.authenticated ? "Profile" : "Login"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  );
                },
              ),
              BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return ListTile(
                    title: const Text("Dark Mode"),
                    trailing: Switch(
                      value: state.isDarkTheme,
                      onChanged: (value) {
                        context.read<ThemeBloc>().add(const ChangeTheme());
                      },
                    ),
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.authenticated
                      ? state.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: SizedBox(
                                height: 40,
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    context.read<AuthBloc>().add(const Logout());
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.red[400],
                                  ),
                                  child: const Text(
                                    "Log Out",
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                      : const SizedBox();
                },
              ),
              verticalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
