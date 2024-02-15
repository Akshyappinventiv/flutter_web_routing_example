import 'package:flutter/material.dart';
import 'package:flutter_web_routing_example/routing_handler.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  FluroRouterConfig.setupRouter();
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: FluroRouterConfig.router.generator,
    );
  }
}
