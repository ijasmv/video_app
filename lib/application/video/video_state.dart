part of 'video_bloc.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    required List<VideoData> videoList,
    required int currentVideoIndex,
    required bool isOnline,
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required bool downloadCompleted,
  }) = _VideoState;

  factory VideoState.initial() {
    return VideoState(
        currentVideoIndex: 0,
        isOnline: true,
        isError: false,
        isLoading: false,
        errorMessage: "",
        downloadCompleted: false,
        videoList: [
          VideoData(
              name: "vid1",
              url:
                  'https://drive.google.com/uc?id=16GLtW1QTajn_H2nL57IOQ6nmYkLSYH0Y&export=download'),
          VideoData(
              name: "vid2",
              url:
                  'https://drive.google.com/uc?id=1bGd-o2f8BOJFjmWAp1eAEv1VM8hs80oR&export=download'),
          VideoData(
              name: "vid3",
              url:
                  'https://drive.google.com/uc?id=1m1wAO_Dt-nLBk3PYJvqb7G78JhrIDPzT&export=download'),
          VideoData(
              name: "vid4",
              url:
                  'https://drive.google.com/uc?id=178UIfni0o8cvp-LTGf4MrYrA6GsMqX5w&export=download'),
        ]);
  }
}
