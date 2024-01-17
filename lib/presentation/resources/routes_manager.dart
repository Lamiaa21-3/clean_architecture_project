

import 'dart:js';

import 'package:clean_arichtecture_project/presentation/forget_password/forget_password_view.dart';
import 'package:clean_arichtecture_project/presentation/login/login_view.dart';
import 'package:clean_arichtecture_project/presentation/main/main_view.dart';
import 'package:clean_arichtecture_project/presentation/register/register_view.dart';
import 'package:clean_arichtecture_project/presentation/splash/splash_view.dart';
import 'package:clean_arichtecture_project/presentation/store_details/store_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String splahRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";


}
class RouteGenerator {
  static Route<dynamic> getRoute (RouteSettings settings)
  {
    switch (settings.name)
    {
      case Routes.splahRoute :
        return MaterialPageRoute(builder: (context)=> const SplashView());
      case Routes.loginRoute :
        return MaterialPageRoute(builder: (context)=>const LoginView());
      case Routes.registerRoute :
        return MaterialPageRoute(builder: (context)=> const RegisterView());
      case Routes.mainRoute :
        return MaterialPageRoute(builder: (context)=> const MainView());
      case Routes.forgetPasswordRoute :
        return MaterialPageRoute(builder: (context)=> const ForgetPassword());
      case Routes.storeDetailsRoute :
        return MaterialPageRoute(builder: (context)=> const StoreDetailsView());
      default :
        return unDefineRoute();
    }
  }
  static Route<dynamic> unDefineRoute (){
    return MaterialPageRoute(builder: ((context) => Scaffold(
      appBar: AppBar(
        title: Text('no route found '),
      ),
      body: const Center(
        child: Text('no route found'),
      ),
    )));
  }
}