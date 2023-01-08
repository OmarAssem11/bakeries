// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bakery/core/data/datasources/cache_helper.dart' as _i25;
import 'package:bakery/di/app_module.dart' as _i35;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource.dart'
    as _i20;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource_impl.dart'
    as _i21;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource.dart'
    as _i4;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource_impl.dart'
    as _i5;
import 'package:bakery/features/auth/data/repository/auth_repository_impl.dart'
    as _i23;
import 'package:bakery/features/auth/data/services/auth_firebase_service.dart'
    as _i3;
import 'package:bakery/features/auth/domain/repository/auth_repository.dart'
    as _i22;
import 'package:bakery/features/auth/domain/usecases/forgot_password_usecase.dart'
    as _i26;
import 'package:bakery/features/auth/domain/usecases/get_current_user_usecase.dart'
    as _i27;
import 'package:bakery/features/auth/domain/usecases/is_logged_in_usecase.dart'
    as _i29;
import 'package:bakery/features/auth/domain/usecases/login_usecase.dart'
    as _i30;
import 'package:bakery/features/auth/domain/usecases/logout_usecase.dart'
    as _i31;
import 'package:bakery/features/auth/domain/usecases/register_usecase.dart'
    as _i33;
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart'
    as _i34;
import 'package:bakery/features/bakeries/data/datasources/remote_datasource/bakeries_remote_datasource.dart'
    as _i7;
import 'package:bakery/features/bakeries/data/datasources/remote_datasource/bakeries_remote_datasource_impl.dart'
    as _i8;
import 'package:bakery/features/bakeries/data/repository/bakeries_repository_impl.dart'
    as _i10;
import 'package:bakery/features/bakeries/data/services/bakeries_firebase_service.dart'
    as _i6;
import 'package:bakery/features/bakeries/domain/repository/bakeries_repository.dart'
    as _i9;
import 'package:bakery/features/bakeries/domain/usecases/get_bakeries_list_usecases.dart'
    as _i11;
import 'package:bakery/features/bakeries/domain/usecases/get_bakery_details_usecase.dart'
    as _i12;
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart'
    as _i24;
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource.dart'
    as _i14;
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource_impl.dart'
    as _i15;
import 'package:bakery/features/products/data/repository/products_repository_impl.dart'
    as _i17;
import 'package:bakery/features/products/data/services/products_firebase_service.dart'
    as _i13;
import 'package:bakery/features/products/domain/repository/products_repository.dart'
    as _i16;
import 'package:bakery/features/products/domain/usecases/get_product_details_usecase.dart'
    as _i28;
import 'package:bakery/features/products/presentation/cubit/products_cubit.dart'
    as _i32;
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart'
    as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

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
    gh.lazySingleton<_i6.BakeriesFirebaseService>(
        () => _i6.BakeriesFirebaseService());
    gh.lazySingleton<_i7.BakeriesRemoteDataSource>(() =>
        _i8.BakeriesRemoteDataSourceImpl(gh<_i6.BakeriesFirebaseService>()));
    gh.lazySingleton<_i9.BakeriesRepository>(
        () => _i10.BakeriesRepositoryImpl(gh<_i7.BakeriesRemoteDataSource>()));
    gh.lazySingleton<_i11.GetBakeriesListUseCase>(
        () => _i11.GetBakeriesListUseCase(gh<_i9.BakeriesRepository>()));
    gh.lazySingleton<_i12.GetBakeryDetailsUseCase>(
        () => _i12.GetBakeryDetailsUseCase(gh<_i9.BakeriesRepository>()));
    gh.lazySingleton<_i13.ProductsFirebaseService>(
        () => _i13.ProductsFirebaseService());
    gh.lazySingleton<_i14.ProductsRemoteDataSource>(() =>
        _i15.ProductsRemoteDataSourceImpl(gh<_i13.ProductsFirebaseService>()));
    gh.lazySingleton<_i16.ProductsRepository>(
        () => _i17.ProductsRepositoryImpl(gh<_i14.ProductsRemoteDataSource>()));
    gh.singleton<_i18.SettingsCubit>(_i18.SettingsCubit());
    await gh.factoryAsync<_i19.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i20.AuthLocalDataSource>(
        () => _i21.AuthLocalDataSourceImpl(gh<_i19.SharedPreferences>()));
    gh.lazySingleton<_i22.AuthRepository>(() => _i23.AuthRepositoryImpl(
          gh<_i20.AuthLocalDataSource>(),
          gh<_i4.AuthRemoteDataSource>(),
        ));
    gh.factory<_i24.BakeriesCubit>(() => _i24.BakeriesCubit(
          gh<_i11.GetBakeriesListUseCase>(),
          gh<_i12.GetBakeryDetailsUseCase>(),
        ));
    gh.singleton<_i25.CacheHelper>(
        _i25.CacheHelperImpl(gh<_i19.SharedPreferences>()));
    gh.lazySingleton<_i26.ForgotPasswordUseCase>(
        () => _i26.ForgotPasswordUseCase(gh<_i22.AuthRepository>()));
    gh.lazySingleton<_i27.GetCurrentUserUseCase>(
        () => _i27.GetCurrentUserUseCase(gh<_i22.AuthRepository>()));
    gh.lazySingleton<_i28.GetProductDetailsUseCase>(
        () => _i28.GetProductDetailsUseCase(gh<_i16.ProductsRepository>()));
    gh.lazySingleton<_i29.IsLoggedInUseCase>(
        () => _i29.IsLoggedInUseCase(gh<_i22.AuthRepository>()));
    gh.lazySingleton<_i30.LoginUseCase>(
        () => _i30.LoginUseCase(gh<_i22.AuthRepository>()));
    gh.lazySingleton<_i31.LogoutUseCase>(
        () => _i31.LogoutUseCase(gh<_i22.AuthRepository>()));
    gh.factory<_i32.ProductsCubit>(
        () => _i32.ProductsCubit(gh<_i28.GetProductDetailsUseCase>()));
    gh.lazySingleton<_i33.RegisterUseCase>(
        () => _i33.RegisterUseCase(gh<_i22.AuthRepository>()));
    gh.factory<_i34.AuthCubit>(() => _i34.AuthCubit(
          gh<_i33.RegisterUseCase>(),
          gh<_i30.LoginUseCase>(),
          gh<_i31.LogoutUseCase>(),
          gh<_i26.ForgotPasswordUseCase>(),
          gh<_i29.IsLoggedInUseCase>(),
          gh<_i27.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i35.AppModule {}
