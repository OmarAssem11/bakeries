// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bakery/core/data/datasources/cache_helper.dart' as _i53;
import 'package:bakery/di/app_module.dart' as _i71;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource.dart'
    as _i48;
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource_impl.dart'
    as _i49;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource.dart'
    as _i4;
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource_impl.dart'
    as _i5;
import 'package:bakery/features/auth/data/repository/auth_repository_impl.dart'
    as _i51;
import 'package:bakery/features/auth/data/services/auth_firebase_service.dart'
    as _i3;
import 'package:bakery/features/auth/domain/repository/auth_repository.dart'
    as _i50;
import 'package:bakery/features/auth/domain/usecases/forgot_password_usecase.dart'
    as _i58;
import 'package:bakery/features/auth/domain/usecases/get_current_user_usecase.dart'
    as _i59;
import 'package:bakery/features/auth/domain/usecases/is_logged_in_usecase.dart'
    as _i63;
import 'package:bakery/features/auth/domain/usecases/login_usecase.dart'
    as _i64;
import 'package:bakery/features/auth/domain/usecases/logout_usecase.dart'
    as _i65;
import 'package:bakery/features/auth/domain/usecases/register_usecase.dart'
    as _i69;
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart'
    as _i70;
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
import 'package:bakery/features/bakeries/domain/usecases/get_all_bakeries_usecases.dart'
    as _i29;
import 'package:bakery/features/bakeries/domain/usecases/get_bakery_details_usecase.dart'
    as _i31;
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart'
    as _i52;
import 'package:bakery/features/cart/data/datasources/remote_datasource/cart_remote_datasource.dart'
    as _i12;
import 'package:bakery/features/cart/data/datasources/remote_datasource/cart_remote_datasource_impl.dart'
    as _i13;
import 'package:bakery/features/cart/data/repository/cart_repository_impl.dart'
    as _i15;
import 'package:bakery/features/cart/data/services/cart_firebase_service.dart'
    as _i11;
import 'package:bakery/features/cart/domain/repository/cart_repository.dart'
    as _i14;
import 'package:bakery/features/cart/domain/usecases/add_to_cart_usecase.dart'
    as _i47;
import 'package:bakery/features/cart/domain/usecases/delete_from_cart_usecase.dart'
    as _i27;
import 'package:bakery/features/cart/domain/usecases/edit_cart_usecase.dart'
    as _i28;
import 'package:bakery/features/cart/domain/usecases/get_cart_usecase.dart'
    as _i32;
import 'package:bakery/features/cart/presentation/cubit/cart_cubit.dart'
    as _i55;
import 'package:bakery/features/categories/data/datasources/remote_datasource/categories_remote_datasource.dart'
    as _i17;
import 'package:bakery/features/categories/data/datasources/remote_datasource/categories_remote_datasource_impl.dart'
    as _i18;
import 'package:bakery/features/categories/data/repository/categories_repository_impl.dart'
    as _i20;
import 'package:bakery/features/categories/data/services/categories_firebase_service.dart'
    as _i16;
import 'package:bakery/features/categories/domain/repository/categories_repository.dart'
    as _i19;
import 'package:bakery/features/categories/domain/usecases/get_all_categories_usecase.dart'
    as _i30;
import 'package:bakery/features/categories/domain/usecases/get_category_bakeries_usecase.dart'
    as _i33;
import 'package:bakery/features/categories/presentation/cubit/categories_cubit.dart'
    as _i56;
import 'package:bakery/features/checkout/data/datasources/remote_datasource/checkout_remote_datasource_impl.dart'
    as _i23;
import 'package:bakery/features/checkout/data/repository/checkout_repository_impl.dart'
    as _i25;
import 'package:bakery/features/checkout/data/services/checkout_firebase_service.dart'
    as _i21;
import 'package:bakery/features/checkout/domain/datasources/remote_datasource/checkout_remote_datasource.dart'
    as _i22;
import 'package:bakery/features/checkout/domain/repository/checkout_repository.dart'
    as _i24;
import 'package:bakery/features/checkout/domain/usecases/checkout_usecase.dart'
    as _i26;
import 'package:bakery/features/checkout/presentation/cubit/checkout_cubit.dart'
    as _i57;
import 'package:bakery/features/location/presentation/cubit/location_cubit.dart'
    as _i34;
import 'package:bakery/features/orders/data/datasources/remote_datasource/orders_remote_datasource.dart'
    as _i36;
import 'package:bakery/features/orders/data/datasources/remote_datasource/orders_remote_datasource_impl.dart'
    as _i37;
import 'package:bakery/features/orders/data/repository/orders_repository_impl.dart'
    as _i39;
import 'package:bakery/features/orders/data/services/orders_firebase_service.dart'
    as _i35;
import 'package:bakery/features/orders/domain/repository/orders_repository.dart'
    as _i38;
import 'package:bakery/features/orders/domain/usecases/cancel_order_usecase.dart'
    as _i54;
import 'package:bakery/features/orders/domain/usecases/get_order_details_usecase.dart'
    as _i60;
import 'package:bakery/features/orders/domain/usecases/get_orders_usecase.dart'
    as _i61;
import 'package:bakery/features/orders/domain/usecases/mark_order_as_collected.dart'
    as _i66;
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart'
    as _i67;
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource.dart'
    as _i41;
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource_impl.dart'
    as _i42;
import 'package:bakery/features/products/data/repository/products_repository_impl.dart'
    as _i44;
import 'package:bakery/features/products/data/services/products_firebase_service.dart'
    as _i40;
import 'package:bakery/features/products/domain/repository/products_repository.dart'
    as _i43;
import 'package:bakery/features/products/domain/usecases/get_product_details_usecase.dart'
    as _i62;
import 'package:bakery/features/products/presentation/cubit/products_cubit.dart'
    as _i68;
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart'
    as _i45;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i46;

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
    gh.lazySingleton<_i11.CartFirebaseService>(
        () => _i11.CartFirebaseService());
    gh.lazySingleton<_i12.CartRemoteDataSource>(
        () => _i13.CartRemoteDataSourceImpl(gh<_i11.CartFirebaseService>()));
    gh.lazySingleton<_i14.CartRepository>(
        () => _i15.CartRepositoryImpl(gh<_i12.CartRemoteDataSource>()));
    gh.lazySingleton<_i16.CategoriesFirebaseService>(
        () => _i16.CategoriesFirebaseService());
    gh.lazySingleton<_i17.CategoriesRemoteDataSource>(() =>
        _i18.CategoriesRemoteDataSourceImpl(
            gh<_i16.CategoriesFirebaseService>()));
    gh.lazySingleton<_i19.CategoriesRepository>(() =>
        _i20.CategoriesRepositoryImpl(gh<_i17.CategoriesRemoteDataSource>()));
    gh.lazySingleton<_i21.CheckoutFirebaseService>(
        () => _i21.CheckoutFirebaseService());
    gh.lazySingleton<_i22.CheckoutRemoteDataSource>(() =>
        _i23.CheckoutRemoteDataSourceImpl(gh<_i21.CheckoutFirebaseService>()));
    gh.lazySingleton<_i24.CheckoutRepository>(
        () => _i25.CheckoutRepositoryImpl(gh<_i22.CheckoutRemoteDataSource>()));
    gh.lazySingleton<_i26.CheckoutUseCase>(
        () => _i26.CheckoutUseCase(gh<_i24.CheckoutRepository>()));
    gh.lazySingleton<_i27.DeleteFromCartUseCase>(
        () => _i27.DeleteFromCartUseCase(gh<_i14.CartRepository>()));
    gh.lazySingleton<_i28.EditCartUseCase>(
        () => _i28.EditCartUseCase(gh<_i14.CartRepository>()));
    gh.lazySingleton<_i29.GetAllBakeriesUseCase>(
        () => _i29.GetAllBakeriesUseCase(gh<_i9.BakeriesRepository>()));
    gh.lazySingleton<_i30.GetAllCategoriesUseCase>(
        () => _i30.GetAllCategoriesUseCase(gh<_i19.CategoriesRepository>()));
    gh.lazySingleton<_i31.GetBakeryDetailsUseCase>(
        () => _i31.GetBakeryDetailsUseCase(gh<_i9.BakeriesRepository>()));
    gh.lazySingleton<_i32.GetCartUseCase>(
        () => _i32.GetCartUseCase(gh<_i14.CartRepository>()));
    gh.lazySingleton<_i33.GetCategoryBakeriesUseCase>(
        () => _i33.GetCategoryBakeriesUseCase(gh<_i19.CategoriesRepository>()));
    gh.factory<_i34.LocationCubit>(() => _i34.LocationCubit());
    gh.lazySingleton<_i35.OrdersFirebaseService>(
        () => _i35.OrdersFirebaseService());
    gh.lazySingleton<_i36.OrdersRemoteDataSource>(() =>
        _i37.OrdersRemoteDataSourceImpl(gh<_i35.OrdersFirebaseService>()));
    gh.lazySingleton<_i38.OrdersRepository>(
        () => _i39.OrdersRepositoryImpl(gh<_i36.OrdersRemoteDataSource>()));
    gh.lazySingleton<_i40.ProductsFirebaseService>(
        () => _i40.ProductsFirebaseService());
    gh.lazySingleton<_i41.ProductsRemoteDataSource>(() =>
        _i42.ProductsRemoteDataSourceImpl(gh<_i40.ProductsFirebaseService>()));
    gh.lazySingleton<_i43.ProductsRepository>(
        () => _i44.ProductsRepositoryImpl(gh<_i41.ProductsRemoteDataSource>()));
    gh.singleton<_i45.SettingsCubit>(_i45.SettingsCubit());
    await gh.factoryAsync<_i46.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i47.AddToCartUseCase>(
        () => _i47.AddToCartUseCase(gh<_i14.CartRepository>()));
    gh.lazySingleton<_i48.AuthLocalDataSource>(
        () => _i49.AuthLocalDataSourceImpl(gh<_i46.SharedPreferences>()));
    gh.lazySingleton<_i50.AuthRepository>(() => _i51.AuthRepositoryImpl(
          gh<_i48.AuthLocalDataSource>(),
          gh<_i4.AuthRemoteDataSource>(),
        ));
    gh.factory<_i52.BakeriesCubit>(() => _i52.BakeriesCubit(
          gh<_i29.GetAllBakeriesUseCase>(),
          gh<_i31.GetBakeryDetailsUseCase>(),
        ));
    gh.singleton<_i53.CacheHelper>(
        _i53.CacheHelperImpl(gh<_i46.SharedPreferences>()));
    gh.lazySingleton<_i54.CancelOrderUseCase>(
        () => _i54.CancelOrderUseCase(gh<_i38.OrdersRepository>()));
    gh.factory<_i55.CartCubit>(() => _i55.CartCubit(
          gh<_i47.AddToCartUseCase>(),
          gh<_i28.EditCartUseCase>(),
          gh<_i32.GetCartUseCase>(),
          gh<_i27.DeleteFromCartUseCase>(),
        ));
    gh.factory<_i56.CategoriesCubit>(() => _i56.CategoriesCubit(
          gh<_i30.GetAllCategoriesUseCase>(),
          gh<_i33.GetCategoryBakeriesUseCase>(),
        ));
    gh.factory<_i57.CheckoutCubit>(
        () => _i57.CheckoutCubit(gh<_i26.CheckoutUseCase>()));
    gh.lazySingleton<_i58.ForgotPasswordUseCase>(
        () => _i58.ForgotPasswordUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i59.GetCurrentUserUseCase>(
        () => _i59.GetCurrentUserUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i60.GetOrderDetailsUseCase>(
        () => _i60.GetOrderDetailsUseCase(gh<_i38.OrdersRepository>()));
    gh.lazySingleton<_i61.GetOrdersUseCase>(
        () => _i61.GetOrdersUseCase(gh<_i38.OrdersRepository>()));
    gh.lazySingleton<_i62.GetProductDetailsUseCase>(
        () => _i62.GetProductDetailsUseCase(gh<_i43.ProductsRepository>()));
    gh.lazySingleton<_i63.IsLoggedInUseCase>(
        () => _i63.IsLoggedInUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i64.LoginUseCase>(
        () => _i64.LoginUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i65.LogoutUseCase>(
        () => _i65.LogoutUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i66.MarkOrderAsCollectedUseCase>(
        () => _i66.MarkOrderAsCollectedUseCase(gh<_i38.OrdersRepository>()));
    gh.factory<_i67.OrdersCubit>(() => _i67.OrdersCubit(
          gh<_i61.GetOrdersUseCase>(),
          gh<_i60.GetOrderDetailsUseCase>(),
          gh<_i66.MarkOrderAsCollectedUseCase>(),
          gh<_i54.CancelOrderUseCase>(),
        ));
    gh.factory<_i68.ProductsCubit>(
        () => _i68.ProductsCubit(gh<_i62.GetProductDetailsUseCase>()));
    gh.lazySingleton<_i69.RegisterUseCase>(
        () => _i69.RegisterUseCase(gh<_i50.AuthRepository>()));
    gh.factory<_i70.AuthCubit>(() => _i70.AuthCubit(
          gh<_i69.RegisterUseCase>(),
          gh<_i64.LoginUseCase>(),
          gh<_i65.LogoutUseCase>(),
          gh<_i58.ForgotPasswordUseCase>(),
          gh<_i63.IsLoggedInUseCase>(),
          gh<_i59.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i71.AppModule {}
