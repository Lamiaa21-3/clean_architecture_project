import 'package:clean_arichtecture_project/presentation/color_manager.dart';
import 'package:clean_arichtecture_project/presentation/fonts_manager.dart';
import 'package:clean_arichtecture_project/presentation/styles_manager.dart';
import 'package:clean_arichtecture_project/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
      primaryColorDark: ColorManager.darkPrimary,
      primaryColorLight: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey1,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      appBarTheme: AppBarTheme(
        color: ColorManager.primary,
        centerTitle: true,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      ),
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
            primary: ColorManager.primary,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          )
      )));
}
