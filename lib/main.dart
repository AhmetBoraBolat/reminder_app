import 'package:flutter/material.dart';
import 'package:reminder_app/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminder app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.grey[100],
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
