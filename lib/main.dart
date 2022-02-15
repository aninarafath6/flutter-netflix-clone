import 'package:flutter/material.dart';
import 'package:netflix_clone/core/theme/app_theme.dart';
import 'package:netflix_clone/presentation/screen/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppTheme.theme,
      home: const MainScreen(),
    );
  }
}
