import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Slider App/slider_app_screen.dart';
import 'Slider App/slider_provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderAppScreen(),
    );
  }
}
