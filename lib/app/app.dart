

import 'package:flutter/material.dart';

import '../presentation/theme_manager.dart';

class MyApp extends StatefulWidget {
  //named constructor
  MyApp._internal();
  static final MyApp _instance =  MyApp._internal();  // singlton or single instanc
factory MyApp () => _instance;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
    );
  }
}
