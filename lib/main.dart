import 'package:flutter/material.dart';
import 'package:navigator_with_passing_data_between_screens/screens/HomeScreen.dart';
import 'package:navigator_with_passing_data_between_screens/screens/SecondScreen.dart';

import 'di/setupLocator.dart';
import 'navigator_service/NavigationService.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator with MVVM Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      navigatorKey: getIt<NavigationService>().navigatorKey,
      home: HomeScreen(),
      routes: {
        '/second': (context) => SecondScreen(),
      },
    );
  }
}
