import 'package:flutter/material.dart';
import 'package:video_app/application/core/constants/app_colors.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key, required this.label, required this.onPressed});
  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          label,
          style: const TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
