import 'package:flutter/material.dart';
import 'package:space/core/theme/app_theme_manager.dart';
import 'package:space/modules/home/home.dart';
import 'package:space/modules/login/login.dart';

import 'modules/planet details/planet_details.dart';


//انا كريم اللي قولت لحضرتك اني مكنتش عارف اخلص الاسايمنتس بسبب الميدترم
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Space",
      theme: AppThemeManager.getThemeData(),
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => Login(),
        Home.routeName: (context) => Home(),
        PlanetDetails.routeName: (context) => PlanetDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
