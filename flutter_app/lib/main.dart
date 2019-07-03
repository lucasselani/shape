import 'package:flutter/material.dart';
import 'package:shape/config/util/locator.dart';
import 'package:shape/config/util/router.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHAPE',
      theme: ThemeData(),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
