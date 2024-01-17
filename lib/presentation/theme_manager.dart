import 'package:clean_arichtecture_project/presentation/color_manager.dart';
import 'package:clean_arichtecture_project/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme (){
  return ThemeData(

    primaryColorDark: ColorManager.darkPrimary ,
    primaryColorLight:ColorManager.lightPrimary ,
    disabledColor: ColorManager.grey1,
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation:  AppSize.s4,
    )
  );
}