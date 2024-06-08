import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Inter',
  colorScheme: const ColorScheme.light(
    // bg color
    surface: Colors.white,
    // primary color
    primary: Colors.black,
    // secondary color
    secondary: Colors.black45,
  ),
);


ThemeData dark = ThemeData(
  fontFamily: 'Inter',
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    // bg color
    surface: Colors.grey.shade900,
    // primary color
    primary: Colors.grey.shade200,
    // secondary color
    secondary: const Color.fromARGB(255, 206, 197, 197),
  ),
);
