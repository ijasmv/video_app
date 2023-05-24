import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_app/application/core/constants/images.dart';
import 'package:video_app/application/core/constants/ui_constants.dart';
import 'package:video_app/application/video/video_bloc.dart';
import 'package:video_app/domain/video/video_data.dart';
import 'package:video_app/presentation/widgets/utils.dart';
import 'package:video_player/video_player.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../application/core/constants/app_colors.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, required this.videoData, required this.onTapMenu});
  final VideoData videoData;
  final Function() onTapMenu;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late final VideoPlayerController _controller;
  bool showOverlay = true;
  Timer? _timer;
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();

    if (widget.videoData.savedFile != null) {
      _controller = VideoPlayerController.file(
        widget.videoData.savedFile!,
      )..initialize().then((_) {
          _controller.play();
          _timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
            showOverlay = false;
          });
        });
    } else {
      _controller = VideoPlayerController.network(
        widget.videoData.url,
      )..initialize().then((_) {
          _controller.play();
          _timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
            showOverlay = false;
          });
        });
    }

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      height: isLandscape ? MediaQuery.of(context).size.height : 230,
      width: double.infinity,
      color: AppColors.black,
      child: InkWell(
        onTap: () {
          _timer?.cancel();
          setState(() {
            showOverlay = !showOverlay;
          });

          if (showOverlay) {
            _timer = Timer.periodic(const Duration(milliseconds: 2000), (_) {
              setState(() {
                showOverlay = false;
              });
            });
          }
        },
        child: Stack(
          children: [
            _controller.value.isInitialized
                ? Center(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  )
                : Container(),
            overlayControls(),
          ],
        ),
      ),
    );
  }

  Widget overlayControls() {
    return Visibility(
      visible: showOverlay,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: kPageHPadding,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              AppColors.black.withOpacity(.5),
              AppColors.transparent,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    widget.onTapMenu.call();
                  },
                  child: SvgPicture.asset(
                    AppImages.icMenu,
                    height: 20,
                  ),
                ),
                // Profile Image
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return Container(
                      height: 35,
                      width: 35,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: state.userData != null &&
                              state.userData!.photoURL != null &&
                              state.userData!.photoURL!.isNotEmpty
                          ? Image.network(
                              state.userData!.photoURL!,
                              fit: BoxFit.cover,
                            )
                          : null,
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    _controller.value.isPlaying ? _controller.pause() : _controller.play();
                  },
                  constraints: const BoxConstraints(
                    maxHeight: 40,
                    maxWidth: 40,
                  ),
                  icon: SvgPicture.asset(
                    _controller.value.isPlaying ? AppImages.icPause : AppImages.icPlay,
                    height: 30,
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: VideoProgressIndicator(
                              _controller,
                              allowScrubbing: true,
                              colors: const VideoProgressColors(
                                backgroundColor: AppColors.grey,
                                playedColor: AppColors.progressGreen,
                              ),
                            ),
                          ),
                          horizontalSpace(15),
                          StreamBuilder<Duration?>(
                              stream: _controller.position.asStream(),
                              builder: (context, snapshot) {
                                return Text(
                                  "${convertDuration(snapshot.data)} / ${convertDuration(_controller.value.duration)}",
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                );
                              }),
                        ],
                      ),
                      verticalSpace(15),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Previous
                              context.read<VideoBloc>().add(const PreviousVideo());
                            },
                            iconSize: 20,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                              maxHeight: 25,
                              maxWidth: 25,
                            ),
                            icon: SvgPicture.asset(
                              AppImages.icPrevious,
                              height: 15,
                            ),
                            // iconSize: 20,
                          ),
                          horizontalSpace(30),
                          IconButton(
                            onPressed: () {
                              // Next
                              context.read<VideoBloc>().add(const NextVideo());
                            },
                            iconSize: 20,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                              maxHeight: 25,
                              maxWidth: 25,
                            ),
                            icon: SvgPicture.asset(
                              AppImages.icNext,
                              height: 15,
                            ),
                          ),
                          horizontalSpace(30),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_controller.value.volume == 0.0) {
                                  _controller.setVolume(1.0);
                                } else {
                                  _controller.setVolume(0.0);
                                }
                              });
                            },
                            child: SvgPicture.asset(
                              _controller.value.volume == 0
                                  ? AppImages.icMute
                                  : AppImages.icVolume,
                              height: 15,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              AppImages.icSettings,
                              height: 15,
                            ),
                          ),
                          horizontalSpace(20),
                          InkWell(
                            onTap: () {
                              if (isFullScreen) {
                                SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                                    overlays: SystemUiOverlay.values);
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.landscapeRight,
                                  DeviceOrientation.landscapeLeft,
                                  DeviceOrientation.portraitUp,
                                  DeviceOrientation.portraitDown,
                                ]);
                                isFullScreen = false;
                              } else {
                                SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.landscapeRight,
                                  DeviceOrientation.landscapeLeft,
                                ]);
                                isFullScreen = true;
                              }
                            },
                            child: SvgPicture.asset(
                              AppImages.icFullscreen,
                              height: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                horizontalSpace(15),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String convertDuration(Duration? duration) {
    duration ??= const Duration(seconds: 0);
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
