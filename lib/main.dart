import 'package:bakery/core/presentation/bloc/app_bloc_observer.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/theme_manager.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_state.dart';
import 'package:bakery/firebase_options.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
      child: BlocProvider(
        create: (_) => getIt<SettingsCubit>()
          ..getCurrentTheme()
          ..getCurrentLocale(),
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (ctx, state) {
            final cubit = BlocProvider.of<SettingsCubit>(ctx);
            return MaterialApp(
              title: 'Bakery',
              debugShowCheckedModeBanner: false,
              onGenerateRoute: onGenerateRoute,
              theme: getLightTheme(),
              darkTheme: getDarkTheme(),
              themeMode: cubit.currentTheme(),
              locale: cubit.locale,
              supportedLocales: S.delegate.supportedLocales,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
