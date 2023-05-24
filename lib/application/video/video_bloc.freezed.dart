// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedVideos,
    required TResult Function() saveVideo,
    required TResult Function() previousVideo,
    required TResult Function() nextVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedVideos,
    TResult? Function()? saveVideo,
    TResult? Function()? previousVideo,
    TResult? Function()? nextVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedVideos,
    TResult Function()? saveVideo,
    TResult Function()? previousVideo,
    TResult Function()? nextVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedVideos value) getSavedVideos,
    required TResult Function(SaveVideo value) saveVideo,
    required TResult Function(PreviousVideo value) previousVideo,
    required TResult Function(NextVideo value) nextVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedVideos value)? getSavedVideos,
    TResult? Function(SaveVideo value)? saveVideo,
    TResult? Function(PreviousVideo value)? previousVideo,
    TResult? Function(NextVideo value)? nextVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedVideos value)? getSavedVideos,
    TResult Function(SaveVideo value)? saveVideo,
    TResult Function(PreviousVideo value)? previousVideo,
    TResult Function(NextVideo value)? nextVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSavedVideosCopyWith<$Res> {
  factory _$$GetSavedVideosCopyWith(
          _$GetSavedVideos value, $Res Function(_$GetSavedVideos) then) =
      __$$GetSavedVideosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedVideosCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$GetSavedVideos>
    implements _$$GetSavedVideosCopyWith<$Res> {
  __$$GetSavedVideosCopyWithImpl(
      _$GetSavedVideos _value, $Res Function(_$GetSavedVideos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSavedVideos implements GetSavedVideos {
  const _$GetSavedVideos();

  @override
  String toString() {
    return 'VideoEvent.getSavedVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSavedVideos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedVideos,
    required TResult Function() saveVideo,
    required TResult Function() previousVideo,
    required TResult Function() nextVideo,
  }) {
    return getSavedVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedVideos,
    TResult? Function()? saveVideo,
    TResult? Function()? previousVideo,
    TResult? Function()? nextVideo,
  }) {
    return getSavedVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedVideos,
    TResult Function()? saveVideo,
    TResult Function()? previousVideo,
    TResult Function()? nextVideo,
    required TResult orElse(),
  }) {
    if (getSavedVideos != null) {
      return getSavedVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedVideos value) getSavedVideos,
    required TResult Function(SaveVideo value) saveVideo,
    required TResult Function(PreviousVideo value) previousVideo,
    required TResult Function(NextVideo value) nextVideo,
  }) {
    return getSavedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedVideos value)? getSavedVideos,
    TResult? Function(SaveVideo value)? saveVideo,
    TResult? Function(PreviousVideo value)? previousVideo,
    TResult? Function(NextVideo value)? nextVideo,
  }) {
    return getSavedVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedVideos value)? getSavedVideos,
    TResult Function(SaveVideo value)? saveVideo,
    TResult Function(PreviousVideo value)? previousVideo,
    TResult Function(NextVideo value)? nextVideo,
    required TResult orElse(),
  }) {
    if (getSavedVideos != null) {
      return getSavedVideos(this);
    }
    return orElse();
  }
}

abstract class GetSavedVideos implements VideoEvent {
  const factory GetSavedVideos() = _$GetSavedVideos;
}

/// @nodoc
abstract class _$$SaveVideoCopyWith<$Res> {
  factory _$$SaveVideoCopyWith(
          _$SaveVideo value, $Res Function(_$SaveVideo) then) =
      __$$SaveVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveVideoCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$SaveVideo>
    implements _$$SaveVideoCopyWith<$Res> {
  __$$SaveVideoCopyWithImpl(
      _$SaveVideo _value, $Res Function(_$SaveVideo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveVideo implements SaveVideo {
  const _$SaveVideo();

  @override
  String toString() {
    return 'VideoEvent.saveVideo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedVideos,
    required TResult Function() saveVideo,
    required TResult Function() previousVideo,
    required TResult Function() nextVideo,
  }) {
    return saveVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedVideos,
    TResult? Function()? saveVideo,
    TResult? Function()? previousVideo,
    TResult? Function()? nextVideo,
  }) {
    return saveVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedVideos,
    TResult Function()? saveVideo,
    TResult Function()? previousVideo,
    TResult Function()? nextVideo,
    required TResult orElse(),
  }) {
    if (saveVideo != null) {
      return saveVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedVideos value) getSavedVideos,
    required TResult Function(SaveVideo value) saveVideo,
    required TResult Function(PreviousVideo value) previousVideo,
    required TResult Function(NextVideo value) nextVideo,
  }) {
    return saveVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedVideos value)? getSavedVideos,
    TResult? Function(SaveVideo value)? saveVideo,
    TResult? Function(PreviousVideo value)? previousVideo,
    TResult? Function(NextVideo value)? nextVideo,
  }) {
    return saveVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedVideos value)? getSavedVideos,
    TResult Function(SaveVideo value)? saveVideo,
    TResult Function(PreviousVideo value)? previousVideo,
    TResult Function(NextVideo value)? nextVideo,
    required TResult orElse(),
  }) {
    if (saveVideo != null) {
      return saveVideo(this);
    }
    return orElse();
  }
}

abstract class SaveVideo implements VideoEvent {
  const factory SaveVideo() = _$SaveVideo;
}

/// @nodoc
abstract class _$$PreviousVideoCopyWith<$Res> {
  factory _$$PreviousVideoCopyWith(
          _$PreviousVideo value, $Res Function(_$PreviousVideo) then) =
      __$$PreviousVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousVideoCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$PreviousVideo>
    implements _$$PreviousVideoCopyWith<$Res> {
  __$$PreviousVideoCopyWithImpl(
      _$PreviousVideo _value, $Res Function(_$PreviousVideo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviousVideo implements PreviousVideo {
  const _$PreviousVideo();

  @override
  String toString() {
    return 'VideoEvent.previousVideo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedVideos,
    required TResult Function() saveVideo,
    required TResult Function() previousVideo,
    required TResult Function() nextVideo,
  }) {
    return previousVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedVideos,
    TResult? Function()? saveVideo,
    TResult? Function()? previousVideo,
    TResult? Function()? nextVideo,
  }) {
    return previousVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedVideos,
    TResult Function()? saveVideo,
    TResult Function()? previousVideo,
    TResult Function()? nextVideo,
    required TResult orElse(),
  }) {
    if (previousVideo != null) {
      return previousVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedVideos value) getSavedVideos,
    required TResult Function(SaveVideo value) saveVideo,
    required TResult Function(PreviousVideo value) previousVideo,
    required TResult Function(NextVideo value) nextVideo,
  }) {
    return previousVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedVideos value)? getSavedVideos,
    TResult? Function(SaveVideo value)? saveVideo,
    TResult? Function(PreviousVideo value)? previousVideo,
    TResult? Function(NextVideo value)? nextVideo,
  }) {
    return previousVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedVideos value)? getSavedVideos,
    TResult Function(SaveVideo value)? saveVideo,
    TResult Function(PreviousVideo value)? previousVideo,
    TResult Function(NextVideo value)? nextVideo,
    required TResult orElse(),
  }) {
    if (previousVideo != null) {
      return previousVideo(this);
    }
    return orElse();
  }
}

abstract class PreviousVideo implements VideoEvent {
  const factory PreviousVideo() = _$PreviousVideo;
}

/// @nodoc
abstract class _$$NextVideoCopyWith<$Res> {
  factory _$$NextVideoCopyWith(
          _$NextVideo value, $Res Function(_$NextVideo) then) =
      __$$NextVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextVideoCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$NextVideo>
    implements _$$NextVideoCopyWith<$Res> {
  __$$NextVideoCopyWithImpl(
      _$NextVideo _value, $Res Function(_$NextVideo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextVideo implements NextVideo {
  const _$NextVideo();

  @override
  String toString() {
    return 'VideoEvent.nextVideo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedVideos,
    required TResult Function() saveVideo,
    required TResult Function() previousVideo,
    required TResult Function() nextVideo,
  }) {
    return nextVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedVideos,
    TResult? Function()? saveVideo,
    TResult? Function()? previousVideo,
    TResult? Function()? nextVideo,
  }) {
    return nextVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedVideos,
    TResult Function()? saveVideo,
    TResult Function()? previousVideo,
    TResult Function()? nextVideo,
    required TResult orElse(),
  }) {
    if (nextVideo != null) {
      return nextVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedVideos value) getSavedVideos,
    required TResult Function(SaveVideo value) saveVideo,
    required TResult Function(PreviousVideo value) previousVideo,
    required TResult Function(NextVideo value) nextVideo,
  }) {
    return nextVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSavedVideos value)? getSavedVideos,
    TResult? Function(SaveVideo value)? saveVideo,
    TResult? Function(PreviousVideo value)? previousVideo,
    TResult? Function(NextVideo value)? nextVideo,
  }) {
    return nextVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedVideos value)? getSavedVideos,
    TResult Function(SaveVideo value)? saveVideo,
    TResult Function(PreviousVideo value)? previousVideo,
    TResult Function(NextVideo value)? nextVideo,
    required TResult orElse(),
  }) {
    if (nextVideo != null) {
      return nextVideo(this);
    }
    return orElse();
  }
}

abstract class NextVideo implements VideoEvent {
  const factory NextVideo() = _$NextVideo;
}

/// @nodoc
mixin _$VideoState {
  List<VideoData> get videoList => throw _privateConstructorUsedError;
  int get currentVideoIndex => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get downloadCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
  @useResult
  $Res call(
      {List<VideoData> videoList,
      int currentVideoIndex,
      bool isOnline,
      bool isLoading,
      bool isError,
      String errorMessage,
      bool downloadCompleted});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? currentVideoIndex = null,
    Object? isOnline = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? downloadCompleted = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoData>,
      currentVideoIndex: null == currentVideoIndex
          ? _value.currentVideoIndex
          : currentVideoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      downloadCompleted: null == downloadCompleted
          ? _value.downloadCompleted
          : downloadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoStateCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$$_VideoStateCopyWith(
          _$_VideoState value, $Res Function(_$_VideoState) then) =
      __$$_VideoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoData> videoList,
      int currentVideoIndex,
      bool isOnline,
      bool isLoading,
      bool isError,
      String errorMessage,
      bool downloadCompleted});
}

/// @nodoc
class __$$_VideoStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_VideoState>
    implements _$$_VideoStateCopyWith<$Res> {
  __$$_VideoStateCopyWithImpl(
      _$_VideoState _value, $Res Function(_$_VideoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? currentVideoIndex = null,
    Object? isOnline = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? downloadCompleted = null,
  }) {
    return _then(_$_VideoState(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoData>,
      currentVideoIndex: null == currentVideoIndex
          ? _value.currentVideoIndex
          : currentVideoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      downloadCompleted: null == downloadCompleted
          ? _value.downloadCompleted
          : downloadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoState implements _VideoState {
  const _$_VideoState(
      {required final List<VideoData> videoList,
      required this.currentVideoIndex,
      required this.isOnline,
      required this.isLoading,
      required this.isError,
      required this.errorMessage,
      required this.downloadCompleted})
      : _videoList = videoList;

  final List<VideoData> _videoList;
  @override
  List<VideoData> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  final int currentVideoIndex;
  @override
  final bool isOnline;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String errorMessage;
  @override
  final bool downloadCompleted;

  @override
  String toString() {
    return 'VideoState(videoList: $videoList, currentVideoIndex: $currentVideoIndex, isOnline: $isOnline, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, downloadCompleted: $downloadCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoState &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.currentVideoIndex, currentVideoIndex) ||
                other.currentVideoIndex == currentVideoIndex) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.downloadCompleted, downloadCompleted) ||
                other.downloadCompleted == downloadCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoList),
      currentVideoIndex,
      isOnline,
      isLoading,
      isError,
      errorMessage,
      downloadCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      __$$_VideoStateCopyWithImpl<_$_VideoState>(this, _$identity);
}

abstract class _VideoState implements VideoState {
  const factory _VideoState(
      {required final List<VideoData> videoList,
      required final int currentVideoIndex,
      required final bool isOnline,
      required final bool isLoading,
      required final bool isError,
      required final String errorMessage,
      required final bool downloadCompleted}) = _$_VideoState;

  @override
  List<VideoData> get videoList;
  @override
  int get currentVideoIndex;
  @override
  bool get isOnline;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  bool get downloadCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}
