import 'package:flutter/material.dart';
import 'package:flutter_application_mobx/screens/home/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFC5DFF8),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFA0BFE0),
          )),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
