import 'package:chat_app/screens/login.dart';
import 'package:chat_app/themes/dark_theme.dart';
import 'package:chat_app/themes/main_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkin',
      themeMode: ThemeMode.system,
      darkTheme: DarkTheme.create(),
      theme: MainTheme.create(),
      home: LoginScreen(),
    );
  }
}

