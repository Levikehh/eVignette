import 'package:flutter/material.dart';
import 'package:e_vignette/theme.dart';
import 'package:e_vignette/constants.dart';
import 'package:e_vignette/screens/home/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: MainScreen(),
    );
  }
}


