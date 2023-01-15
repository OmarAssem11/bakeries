import 'package:bakery/core/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle({
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
}) =>
    TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );

TextStyle getLightTextStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) =>
    _getTextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
    );

TextStyle getRegularTextStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) =>
    _getTextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
    );

TextStyle getMediumTextStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) =>
    _getTextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
    );

TextStyle getSemiBoldTextStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) =>
    _getTextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
    );

TextStyle getBoldTextStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) =>
    _getTextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
    );
