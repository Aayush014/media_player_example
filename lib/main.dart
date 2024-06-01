import 'package:flutter/material.dart';
import 'package:media_player_example/Parallax%20Effect/Provider/effect_provider.dart';
import 'package:media_player_example/Parallax%20Effect/View/home_screen.dart';
import 'package:provider/provider.dart';

import 'Slider App/Provider/slider_provider.dart';

void main() {
  runApp(MultiProvider(builder: (context, child) => MyApp(), providers: [
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
      child: const MyApp(),
    ),
    ChangeNotifierProvider(
      create: (context) => GradientProvider(),
    )
  ]));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
