// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyMobileCopyWith<$Res> {
  factory _$$VerifyMobileCopyWith(
          _$VerifyMobile value, $Res Function(_$VerifyMobile) then) =
      __$$VerifyMobileCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$VerifyMobileCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyMobile>
    implements _$$VerifyMobileCopyWith<$Res> {
  __$$VerifyMobileCopyWithImpl(
      _$VerifyMobile _value, $Res Function(_$VerifyMobile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$VerifyMobile(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyMobile implements VerifyMobile {
  const _$VerifyMobile({required this.mobile});

  @override
  final String mobile;

  @override
  String toString() {
    return 'AuthEvent.verifyMobile(mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobile &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMobileCopyWith<_$VerifyMobile> get copyWith =>
      __$$VerifyMobileCopyWithImpl<_$VerifyMobile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) {
    return verifyMobile(mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) {
    return verifyMobile?.call(mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyMobile != null) {
      return verifyMobile(mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return verifyMobile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return verifyMobile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyMobile != null) {
      return verifyMobile(this);
    }
    return orElse();
  }
}

abstract class VerifyMobile implements AuthEvent {
  const factory VerifyMobile({required final String mobile}) = _$VerifyMobile;

  String get mobile;
  @JsonKey(ignore: true)
  _$$VerifyMobileCopyWith<_$VerifyMobile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpCopyWith<$Res> {
  factory _$$VerifyOtpCopyWith(
          _$VerifyOtp value, $Res Function(_$VerifyOtp) then) =
      __$$VerifyOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$VerifyOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtp>
    implements _$$VerifyOtpCopyWith<$Res> {
  __$$VerifyOtpCopyWithImpl(
      _$VerifyOtp _value, $Res Function(_$VerifyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOtp(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtp implements VerifyOtp {
  const _$VerifyOtp({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtp &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpCopyWith<_$VerifyOtp> get copyWith =>
      __$$VerifyOtpCopyWithImpl<_$VerifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) {
    return verifyOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) {
    return verifyOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements AuthEvent {
  const factory VerifyOtp({required final String otp}) = _$VerifyOtp;

  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyOtpCopyWith<_$VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$CheckAuthCopyWith<$Res> {
  factory _$$CheckAuthCopyWith(
          _$CheckAuth value, $Res Function(_$CheckAuth) then) =
      __$$CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuth>
    implements _$$CheckAuthCopyWith<$Res> {
  __$$CheckAuthCopyWithImpl(
      _$CheckAuth _value, $Res Function(_$CheckAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuth implements CheckAuth {
  const _$CheckAuth();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class CheckAuth implements AuthEvent {
  const factory CheckAuth() = _$CheckAuth;
}

/// @nodoc
abstract class _$$UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileCopyWith(
          _$UpdateProfile value, $Res Function(_$UpdateProfile) then) =
      __$$UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String image, String name, String email});
}

/// @nodoc
class __$$UpdateProfileCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateProfile>
    implements _$$UpdateProfileCopyWith<$Res> {
  __$$UpdateProfileCopyWithImpl(
      _$UpdateProfile _value, $Res Function(_$UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UpdateProfile(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfile implements UpdateProfile {
  const _$UpdateProfile(
      {required this.image, required this.name, required this.email});

  @override
  final String image;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.updateProfile(image: $image, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfile &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      __$$UpdateProfileCopyWithImpl<_$UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) verifyMobile,
    required TResult Function(String otp) verifyOtp,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String image, String name, String email)
        updateProfile,
  }) {
    return updateProfile(image, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? verifyMobile,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String image, String name, String email)? updateProfile,
  }) {
    return updateProfile?.call(image, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? verifyMobile,
    TResult Function(String otp)? verifyOtp,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String image, String name, String email)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(image, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyMobile value) verifyMobile,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckAuth value) checkAuth,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyMobile value)? verifyMobile,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckAuth value)? checkAuth,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyMobile value)? verifyMobile,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Logout value)? logout,
    TResult Function(CheckAuth value)? checkAuth,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements AuthEvent {
  const factory UpdateProfile(
      {required final String image,
      required final String name,
      required final String email}) = _$UpdateProfile;

  String get image;
  String get name;
  String get email;
  @JsonKey(ignore: true)
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String get verifyId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get authenticated => throw _privateConstructorUsedError;
  AuthResponse get authResponse => throw _privateConstructorUsedError;
  User? get userData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String verifyId,
      bool isLoading,
      bool authenticated,
      AuthResponse authResponse,
      User? userData});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyId = null,
    Object? isLoading = null,
    Object? authenticated = null,
    Object? authResponse = null,
    Object? userData = freezed,
  }) {
    return _then(_value.copyWith(
      verifyId: null == verifyId
          ? _value.verifyId
          : verifyId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      authResponse: null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String verifyId,
      bool isLoading,
      bool authenticated,
      AuthResponse authResponse,
      User? userData});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyId = null,
    Object? isLoading = null,
    Object? authenticated = null,
    Object? authResponse = null,
    Object? userData = freezed,
  }) {
    return _then(_$_AuthState(
      verifyId: null == verifyId
          ? _value.verifyId
          : verifyId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      authResponse: null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.verifyId,
      required this.isLoading,
      required this.authenticated,
      required this.authResponse,
      this.userData});

  @override
  final String verifyId;
  @override
  final bool isLoading;
  @override
  final bool authenticated;
  @override
  final AuthResponse authResponse;
  @override
  final User? userData;

  @override
  String toString() {
    return 'AuthState(verifyId: $verifyId, isLoading: $isLoading, authenticated: $authenticated, authResponse: $authResponse, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.verifyId, verifyId) ||
                other.verifyId == verifyId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, verifyId, isLoading, authenticated, authResponse, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final String verifyId,
      required final bool isLoading,
      required final bool authenticated,
      required final AuthResponse authResponse,
      final User? userData}) = _$_AuthState;

  @override
  String get verifyId;
  @override
  bool get isLoading;
  @override
  bool get authenticated;
  @override
  AuthResponse get authResponse;
  @override
  User? get userData;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
