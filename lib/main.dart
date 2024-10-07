import 'package:exam/utills/routes.dart';
import 'package:exam/views/pages/detail_page/detail_page.dart';
import 'package:exam/views/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.detail: (context) => const DetailPage(),
      },
    );
  }
}
