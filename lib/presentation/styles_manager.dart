import 'package:clean_arichtecture_project/presentation/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTexStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontsConstants.fontFamily);
}
TextStyle getLightStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTexStyle(fontSize, FontsWeigthManager.ligth, color);
}
TextStyle getRegularStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTexStyle(fontSize, FontsWeigthManager.regular, color);
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTexStyle(fontSize, FontsWeigthManager.medium, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTexStyle(fontSize, FontsWeigthManager.medium, color);
}

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTexStyle(fontSize, FontsWeigthManager.regular, color);
}
