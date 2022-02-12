import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/app_colors.dart';
import 'package:netflix_clone/presentation/screen/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
      ),
      home: const MainScreen(),
    );
  }
}
