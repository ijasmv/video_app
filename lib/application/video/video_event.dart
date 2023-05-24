part of 'video_bloc.dart';

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.getSavedVideos() = GetSavedVideos;
  const factory VideoEvent.saveVideo() = SaveVideo;
  const factory VideoEvent.previousVideo() = PreviousVideo;
  const factory VideoEvent.nextVideo() = NextVideo;
}
