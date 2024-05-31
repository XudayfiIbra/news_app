import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('random', style: GoogleFonts.inter(),),),
        body: Center(
          child: Image.asset('lib/images/image1.jpg'),
        ),
      ),
    );
  }
}
