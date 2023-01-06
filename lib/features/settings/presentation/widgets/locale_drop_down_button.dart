import 'package:bakery/core/data/constants/key_constants.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleDropDownButton extends StatefulWidget {
  const LocaleDropDownButton();

  @override
  State<LocaleDropDownButton> createState() => _LocaleDropDownButtonState();
}

class _LocaleDropDownButtonState extends State<LocaleDropDownButton> {
  late SettingsCubit _cubit;
  late Lang _lang;
  final _langs = [
    Lang(langName: S.current.english, locale: KeyConstants.englishLocale),
    Lang(langName: S.current.arabic, locale: KeyConstants.arabicLocale),
  ];

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of<SettingsCubit>(context);
    _lang = Lang(
      langName: _getLangName(_cubit.locale),
      locale: _cubit.locale,
    );
  }

  String _getLangName(Locale lc) => _langs
      .firstWhere(
        (lang) => lang.locale == lc,
        orElse: () => _langs.first,
      )
      .langName;

  Locale _getLocale(String langName) => _langs
      .firstWhere(
        (lang) => lang.langName == langName,
        orElse: () => _langs.first,
      )
      .locale;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: _langs
          .map(
            (lang) => DropdownMenuItem<String>(
              value: lang.langName,
              child: Text(lang.langName),
            ),
          )
          .toList(),
      value: _lang.langName,
      onChanged: (selectedLangName) {
        if (selectedLangName != null) {
          _lang = Lang(
            langName: selectedLangName,
            locale: _getLocale(selectedLangName),
          );
          _cubit.changeLocale(_lang.locale);
          setState(() {});
        }
      },
      isExpanded: true,
    );
  }
}

class Lang {
  final String langName;
  final Locale locale;

  const Lang({
    required this.langName,
    required this.locale,
  });
}
