import 'package:flutter/material.dart';
import 'package:video_app/application/core/constants/app_colors.dart';

class NavBtn extends StatelessWidget {
  const NavBtn({super.key, required this.isLeft, required this.onPressed});
  final bool isLeft;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.white,
            elevation: 10,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Icon(
          isLeft ? Icons.arrow_back_ios_outlined : Icons.arrow_forward_ios_rounded,
          color: AppColors.black,
          size: 18,
        ),
      ),
    );
  }
}
