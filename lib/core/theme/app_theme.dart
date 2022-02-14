import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';

import '../colors/app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    fontFamily: GoogleFonts.yantramanav().fontFamily,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );

// title font theme
  static TextStyle titleTextTheme = const TextStyle(
    color: AppColors.titleFondColor,
    fontSize: AppSizes.titleFontSize,
    fontWeight: FontWeight.w800,
  );
}
