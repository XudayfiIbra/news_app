import 'package:flutter/material.dart';
import 'package:news_app/pages/blog_reading.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/theme/Toggle.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/ReadingPage': (context) => const ReadingPage(),
      },
    );
  }
}
