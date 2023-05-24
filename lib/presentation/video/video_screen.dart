import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:video_app/application/core/constants/ui_constants.dart';
import 'package:video_app/presentation/video/widgets/download_btn.dart';
import 'package:video_app/presentation/video/widgets/nav_btn.dart';
import 'package:video_app/presentation/video/widgets/side_menu.dart';
import 'package:video_app/presentation/video/widgets/video_player_widget.dart';
import 'package:video_app/presentation/widgets/utils.dart';
import '../../application/video/video_bloc.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    return BlocListener<VideoBloc, VideoState>(
      listener: (context, state) {
        if (state.isError && state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        } else if (!state.isLoading && state.downloadCompleted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Download Complete!")));
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
          child: Column(
            children: [
              BlocBuilder<VideoBloc, VideoState>(
                builder: (context, state) {
                  final GlobalKey videoKey = GlobalKey();
                  // videoKey.currentState?.dispose();
                  videoKey.currentState?.initState();
                  return VideoPlayerWidget(
                    key: videoKey,
                    videoData: state.videoList[state.currentVideoIndex],
                    onTapMenu: () {
                      if (scaffoldKey.currentState!.isDrawerOpen) {
                        scaffoldKey.currentState!.closeDrawer();
                      } else {
                        scaffoldKey.currentState!.openDrawer();
                      }
                    },
                  );
                },
              ),
              if (isPortrait) verticalSpace(20),
              if (isPortrait)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPageHPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBtn(
                        isLeft: true,
                        onPressed: () {
                          context.read<VideoBloc>().add(const PreviousVideo());
                        },
                      ),
                      const DownloadBtn(),
                      NavBtn(
                        isLeft: false,
                        onPressed: () {
                          context.read<VideoBloc>().add(const NextVideo());
                        },
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
