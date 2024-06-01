import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Modal/color_list.dart';
import '../Modal/sliding_card.dart';
import '../Provider/effect_provider.dart';
import 'components/tab_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: Consumer<CarouselProvider>(builder: (context, carouselProvider, child) {
        final colors = colorList[carouselProvider.currentPage]['colors'];
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors!,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Tabs(),
              Spacer(),
              SlidingCardsView(),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      }),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'Parallax Effect',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
