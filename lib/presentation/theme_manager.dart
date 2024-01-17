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
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s17),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12),
            )),
      ),
      textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
        titleMedium: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
        bodySmall: getRegularStyle(color: ColorManager.grey1),
        bodyLarge: getRegularStyle(color: ColorManager.grey),
        displayLarge: getLightStyle(color: ColorManager.white,fontSize: FontSize.s20),
      ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s4),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8),),


      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s4),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8),),

      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s4),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8),),

      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s4),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8),),

      ),
    )
  );
}
