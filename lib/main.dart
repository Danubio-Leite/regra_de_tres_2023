import 'package:flutter/material.dart';
import 'package:regra_de_tres_2023/pages/main_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Regra de três',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 26, 18, 187)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
