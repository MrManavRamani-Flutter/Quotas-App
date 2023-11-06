import 'package:flutter/material.dart';
import 'package:quotes_model/screens/design_quate.dart';
import 'package:quotes_model/screens/fest_design.dart';
import 'package:quotes_model/screens/festival.dart';
import 'package:quotes_model/screens/home.dart';
import 'package:quotes_model/screens/favorite_quotes.dart';
import 'package:quotes_model/screens/info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'quate_page': (context) => const HomePage(),
        'festival': (context) => const Festival(),
        'favorite_quotes': (context) => const Favorite_Quotes(),
        '/': (context) => const Info_Page(),
        'design_quate': (context) => const Design_Quate(),
        'fest_design': (context) => const Fest_Design(),
      },
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.dark,
    );
  }
}
