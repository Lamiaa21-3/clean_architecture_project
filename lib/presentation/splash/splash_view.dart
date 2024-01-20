import 'dart:async';

import 'package:clean_arichtecture_project/presentation/resources/color_manager.dart';
import 'package:clean_arichtecture_project/presentation/resources/image_manager.dart';
import 'package:clean_arichtecture_project/presentation/resources/routes_manager.dart';
import 'package:clean_arichtecture_project/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
   Timer ? _timer;
   _startDelay ()
   {
     _timer = Timer(Duration(seconds: 2), _goNext);
   }
   _goNext ()
   {
     Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
   }
   @override
  void initState() {

    super.initState();

    _startDelay();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,

      body: Center(child: Image.asset(ImageAssets.splashLogo)),
    );
  }
}


