import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_app/application/core/constants/app_colors.dart';
import 'package:video_app/application/core/constants/images.dart';
import 'package:video_app/presentation/widgets/utils.dart';

import '../../../application/video/video_bloc.dart';

class DownloadBtn extends StatelessWidget {
  const DownloadBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoBloc, VideoState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          // width: 150,
          child: TextButton(
            onPressed: () {
              if (!state.isLoading) {
                context.read<VideoBloc>().add(const SaveVideo());
              }
            },
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                foregroundColor: AppColors.white,
                backgroundColor: AppColors.white,
                elevation: 5,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: state.isLoading
                ? Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                        ),
                      ),
                      horizontalSpace(15),
                      const Text(
                        "Downloading Video..",
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        heightFactor: .5,
                        child: SvgPicture.asset(
                          AppImages.icDownload,
                          height: 10,
                        ),
                      ),
                      horizontalSpace(10),
                      const Text(
                        "Download",
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
