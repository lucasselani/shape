import 'package:flutter/material.dart';
import 'package:shape/config/util/locator.dart';
import 'package:shape/config/util/router.dart';

import 'config/util/strings.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
