import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_app/application/auth/auth_bloc.dart';
import 'package:video_app/application/theme/theme_bloc.dart';
import 'package:video_app/application/video/video_bloc.dart';
import 'package:video_app/presentation/video/video_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ThemeBloc>().add(const GetCurrentTheme());
      context.read<AuthBloc>().add(const CheckAuth());
      context.read<VideoBloc>().add(const GetSavedVideos());
      Future.delayed(const Duration(seconds: 2)).whenComplete(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => VideoScreen()));
      });
    });
    return const Scaffold(
      body: SafeArea(
          child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 300),
          child: Icon(
            Icons.play_circle_fill_rounded,
            color: Colors.red,
            size: 120,
          ),
        ),
      )),
    );
  }
}
