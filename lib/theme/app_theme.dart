import 'package:flutter/material.dart';

class AppTheme {
  static final color = _AppColors();
  static final spacing = _AppSpacing();

  static ThemeData get theme {
    return ThemeData(
      textTheme:
          _textTheme.apply(bodyColor: color.white, displayColor: color.white),
      primaryColor: color.white,
      fontFamily: 'Roboto',
    );
  }

  static const _textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}

class _AppSpacing {
  final xSmall = 2.0;
  final gutter = 16.0;
  final halfGutter = 8.0;
  final borderRadius = 8.0;
}

class _AppColors {
  final black = Colors.black;
  final white = Colors.white;
  final gray = const Color(0xFF7A7A79);
  final grayXDark = const Color(0xFF333333);
}
