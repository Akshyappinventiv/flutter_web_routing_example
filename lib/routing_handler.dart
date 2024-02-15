// import 'package:flutter/material.dart';
// import 'package:fluro/fluro.dart';
// import 'package:flutter_web_routing_example/home_page.dart';
// import 'package:flutter_web_routing_example/splash_page.dart';
//
// class MyFluroRouter {
//   final router = FluroRouter();
//   static final Handler _splashHandler = Handler(
//       handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
//           const SplashPage());
//   static final Handler _homeHandler = Handler(
//       handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
//           const HomePage());
//
//   void setupRouter() {
//     router.define(
//       '/',
//       handler: _splashHandler,
//     );
//     router.define(
//       '/home',
//       handler: _homeHandler,
//     );
//   }
// }


import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_routing_example/home_page.dart';
import 'package:flutter_web_routing_example/splash_page.dart';

class FluroRouterConfig {
  static FluroRouter router = FluroRouter();
  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const SplashPage());
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const HomePage());
  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define(
      '/home',
      handler: _homeHandler,
    );
  }
}