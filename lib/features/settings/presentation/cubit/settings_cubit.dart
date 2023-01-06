import 'package:bakery/core/data/constants/key_constants.dart';
import 'package:bakery/core/data/datasources/cache_helper.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  bool isDark = false;
  Locale locale = KeyConstants.englishLocale;

  ThemeMode currentTheme() => isDark ? ThemeMode.dark : ThemeMode.light;

  Future<void> getCurrentTheme() async {
    await getIt<CacheHelper>().has(KeyConstants.theme).then((hasToken) async {
      if (hasToken) {
        await getIt<CacheHelper>().get(KeyConstants.theme).then((value) async {
          isDark = value as bool;
        });
      } else {
        isDark = false;
      }
    });
    emit(const ChangeState());
  }

  Future<void> switchTheme() async {
    isDark = !isDark;
    await getIt<CacheHelper>().put(KeyConstants.theme, isDark);
    emit(ReloadingTheme(isDark: isDark));
  }

  Future<void> getCurrentLocale() async {
    await getIt<CacheHelper>().has(KeyConstants.locale).then((hasToken) async {
      if (hasToken) {
        await getIt<CacheHelper>().get(KeyConstants.locale).then((value) async {
          value as String;
          locale = Locale.fromSubtags(
            languageCode: value.split('_').first,
            countryCode: value.split('_').last,
          );
        });
      } else {
        locale = KeyConstants.englishLocale;
      }
    });
    emit(const ChangeState());
  }

  Future<void> changeLocale(Locale lc) async {
    locale = lc;
    await getIt<CacheHelper>().put(KeyConstants.locale, locale.toString());
    emit(ReloadingLocale(locale));
  }
}
