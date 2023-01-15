import 'package:bakery/core/data/constants/key_constants.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:equatable/equatable.dart';
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
  late List<Lang> _langs = [
    Lang(name: S.current.english, locale: KeyConstants.englishLocale),
    Lang(name: S.current.arabic, locale: KeyConstants.arabicLocale),
  ];

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of<SettingsCubit>(context);
    _lang = Lang(
      name: _getLangName(_cubit.locale),
      locale: _cubit.locale,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _langs = [
      Lang(name: S.of(context).english, locale: KeyConstants.englishLocale),
      Lang(name: S.of(context).arabic, locale: KeyConstants.arabicLocale),
    ];
  }

  String _getLangName(Locale lc) => _langs
      .firstWhere(
        (lang) => lang.locale == lc,
        orElse: () => _langs.first,
      )
      .name;

  Locale _getLocale(String langName) => _langs
      .firstWhere(
        (lang) => lang.name == langName,
        orElse: () => _langs.first,
      )
      .locale;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Lang>(
      items: _langs
          .map(
            (lang) => DropdownMenuItem<Lang>(
              value: lang,
              child: Text(lang.name),
            ),
          )
          .toList(),
      value: _lang,
      onChanged: (selectedLang) {
        if (selectedLang != null) {
          _lang = Lang(
            name: selectedLang.name,
            locale: _getLocale(selectedLang.name),
          );
          _cubit.changeLocale(_lang.locale);
          setState(() {});
        }
      },
      isExpanded: true,
    );
  }
}

class Lang extends Equatable {
  final String name;
  final Locale locale;

  const Lang({
    required this.name,
    required this.locale,
  });

  @override
  List<Object?> get props => [locale];
}
