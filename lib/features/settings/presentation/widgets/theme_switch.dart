import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch();

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SettingsCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.s),
      child: Row(
        children: [
          const CircleAvatar(
            radius: Sizes.s16,
            backgroundColor: ColorManager.blueGray,
            child: Icon(
              Icons.dark_mode,
              size: Sizes.s28,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: Sizes.s16),
          Text(
            S.current.darkMode,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Spacer(),
          Switch.adaptive(
            value: cubit.isDark,
            onChanged: (_) => cubit.switchTheme(),
            activeColor: ColorManager.lightBlue,
          ),
        ],
      ),
    );
  }
}
