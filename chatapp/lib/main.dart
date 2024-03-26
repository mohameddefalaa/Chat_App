import 'package:chatapp/Views/Login_View.dart';
import 'package:chatapp/Views/layoutapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: const layoutapp());
  }
}
