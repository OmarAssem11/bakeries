// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bakery/core/data/datasources/cache_helper.dart' as _i12;
import 'package:bakery/di/app_module.dart' as _i20;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource.dart'
    as _i8;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource_impl.dart'
    as _i9;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource.dart'
    as _i4;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource_impl.dart'
    as _i5;
import 'package:bakery/features/auth/data/repository/auth_repository_impl.dart'
    as _i11;
import 'package:bakery/features/auth/data/services/auth_firebase_service.dart'
    as _i3;
import 'package:bakery/features/auth/domain/repository/auth_repository.dart'
    as _i10;
import 'package:bakery/features/auth/domain/usecases/forgot_password_usecase.dart'
    as _i13;
import 'package:bakery/features/auth/domain/usecases/get_current_user_usecase.dart'
    as _i14;
import 'package:bakery/features/auth/domain/usecases/is_logged_in_usecase.dart'
    as _i15;
import 'package:bakery/features/auth/domain/usecases/login_usecase.dart'
    as _i16;
import 'package:bakery/features/auth/domain/usecases/logout_usecase.dart'
    as _i17;
import 'package:bakery/features/auth/domain/usecases/register_usecase.dart'
    as _i18;
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart'
    as _i19;
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.AuthFirebaseService>(() => _i3.AuthFirebaseService());
    gh.lazySingleton<_i4.AuthRemoteDataSource>(
        () => _i5.AuthRemoteDataSourceImpl(gh<_i3.AuthFirebaseService>()));
    gh.singleton<_i6.SettingsCubit>(_i6.SettingsCubit());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i8.AuthLocalDataSource>(
        () => _i9.AuthLocalDataSourceImpl(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i10.AuthRepository>(() => _i11.AuthRepositoryImpl(
          gh<_i8.AuthLocalDataSource>(),
          gh<_i4.AuthRemoteDataSource>(),
        ));
    gh.singleton<_i12.CacheHelper>(
        _i12.CacheHelperImpl(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i13.ForgotPasswordUseCase>(
        () => _i13.ForgotPasswordUseCase(gh<_i10.AuthRepository>()));
    gh.lazySingleton<_i14.GetCurrentUserUseCase>(
        () => _i14.GetCurrentUserUseCase(gh<_i10.AuthRepository>()));
    gh.lazySingleton<_i15.IsLoggedInUseCase>(
        () => _i15.IsLoggedInUseCase(gh<_i10.AuthRepository>()));
    gh.lazySingleton<_i16.LoginUseCase>(
        () => _i16.LoginUseCase(gh<_i10.AuthRepository>()));
    gh.lazySingleton<_i17.LogoutUseCase>(
        () => _i17.LogoutUseCase(gh<_i10.AuthRepository>()));
    gh.lazySingleton<_i18.RegisterUseCase>(
        () => _i18.RegisterUseCase(gh<_i10.AuthRepository>()));
    gh.factory<_i19.AuthCubit>(() => _i19.AuthCubit(
          gh<_i18.RegisterUseCase>(),
          gh<_i16.LoginUseCase>(),
          gh<_i17.LogoutUseCase>(),
          gh<_i13.ForgotPasswordUseCase>(),
          gh<_i15.IsLoggedInUseCase>(),
          gh<_i14.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i20.AppModule {}
