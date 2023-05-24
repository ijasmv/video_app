// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:video_app/application/auth/auth_bloc.dart' as _i6;
import 'package:video_app/application/video/video_bloc.dart' as _i5;
import 'package:video_app/domain/auth/i_auth_repo.dart' as _i3;
import 'package:video_app/infrastructure/auth/auth_repository.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepository());
  gh.factory<_i5.VideoBloc>(() => _i5.VideoBloc());
  gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc(gh<_i3.IAuthRepo>()));
  return getIt;
}
