import 'package:apicall/screen/Pproduct_screen.dart';
import 'package:apicall/screen/homescreen.dart';
import 'package:apicall/screen/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/settingsPage': (context) => const SettingsPage(),
        '/productsPage': (context) => const ProductPage(),
      },
    );
  }
}
