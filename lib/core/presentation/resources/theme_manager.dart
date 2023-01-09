import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/font_manager.dart';
import 'package:bakery/core/presentation/resources/text_styles_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

//Light theme
ThemeData getLightTheme() => ThemeData(
      colorSchemeSeed: ColorManager.primary,
      //Card
      cardTheme: const CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: Sizes.s4,
      ),
      //AppBar
      appBarTheme: AppBarTheme(
        color: ColorManager.primary,
        elevation: Sizes.s4,
        titleTextStyle: getMediumTextStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.white,
        ),
        actionsIconTheme: const IconThemeData(
          color: ColorManager.white,
          size: Sizes.s28,
        ),
      ),
      //Button
      buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey,
        buttonColor: ColorManager.primary,
      ),
      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: getMediumTextStyle(
            color: ColorManager.primary,
            fontSize: 18,
          ),
        ),
      ),
      //ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getSemiBoldTextStyle(
            color: ColorManager.white,
            fontSize: FontSizeManager.s18,
          ),
          backgroundColor: ColorManager.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.s12)),
          ),
        ),
      ),
      //Text
      textTheme: TextTheme(
        titleLarge: getMediumTextStyle(
          color: ColorManager.black,
          fontSize: FontSizeManager.s22,
        ),
        bodyLarge: getRegularTextStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSizeManager.s16,
        ),
        bodyMedium: getMediumTextStyle(
          color: ColorManager.black,
          fontSize: FontSizeManager.s16,
        ),
        bodySmall: getRegularTextStyle(
          color: ColorManager.grey,
        ),
      ),
      //InputDecoration
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(Insets.xs),
        hintStyle: getRegularTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        labelStyle: getMediumTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        errorStyle: getRegularTextStyle(
          color: ColorManager.error,
          fontSize: FontSizeManager.s14,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
      ),
    );

//Dark theme
ThemeData getDarkTheme() => ThemeData(
      colorSchemeSeed: ColorManager.primary,
      //Card
      cardTheme: const CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: Sizes.s4,
      ),
      //AppBar
      appBarTheme: AppBarTheme(
        color: ColorManager.primary,
        elevation: Sizes.s4,
        titleTextStyle: getMediumTextStyle(
          fontSize: FontSizeManager.s20,
          color: ColorManager.white,
        ),
        actionsIconTheme: const IconThemeData(
          color: ColorManager.white,
          size: Sizes.s28,
        ),
      ),
      //Button
      buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey,
        buttonColor: ColorManager.primary,
      ),
      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: getMediumTextStyle(
            color: ColorManager.primary,
            fontSize: 18,
          ),
        ),
      ),
      //ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularTextStyle(
            color: ColorManager.white,
            fontSize: FontSizeManager.s18,
          ),
          backgroundColor: ColorManager.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.s12)),
          ),
        ),
      ),
      //Text
      textTheme: TextTheme(
        titleLarge: getLightTextStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s22,
        ),
        bodyLarge: getSemiBoldTextStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSizeManager.s16,
        ),
        bodyMedium: getMediumTextStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSizeManager.s14,
        ),
        bodySmall: getRegularTextStyle(
          color: ColorManager.grey,
        ),
      ),
      //InputDecoration
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(Insets.xs),
        hintStyle: getRegularTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        labelStyle: getMediumTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        errorStyle: getRegularTextStyle(
          color: ColorManager.error,
          fontSize: FontSizeManager.s14,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: Sizes.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.s8),
          ),
        ),
      ),
    );
