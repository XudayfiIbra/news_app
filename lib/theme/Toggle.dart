import 'package:flutter/material.dart';
import 'package:news_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = dark;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleColor() {
    if (_themeData == light) {
      themeData = dark;
    } else {
      themeData = light;
    }
  }
}
