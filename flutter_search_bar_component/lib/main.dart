import 'package:flutter/material.dart';
import 'package:flutter_components/serach_bar_component.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SerachBarComponent(),
    );
  }
}
