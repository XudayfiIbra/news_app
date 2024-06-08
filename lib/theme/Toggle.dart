import 'package:flutter/material.dart';
import 'package:news_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = light;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == light) {
      themeData = dark;
    } else {
      themeData = light;
    }
  }
}
