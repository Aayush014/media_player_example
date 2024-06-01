import 'package:flutter/material.dart';
import 'package:media_player_example/Parallax%20Effect/Modal/sliding_card.dart';
import 'components/tab_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Tabs(),
          Spacer(),
          SlidingCardsView(),
          Spacer(flex: 2,),
        ],
      ),
    );
  }
}

AppBar myAppBar (){
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

List colorList = [
  {
    'colors' : [
      Colors.pink.shade100,
      Colors.blue.shade200,
      Colors.pink.shade200,
    ]
  },
  {
    'colors' : [
      Colors.yellow.shade200,
      Colors.blue.shade300,
      Colors.red.shade300,
    ]
  },
  {
    'colors' : [
      Colors.yellow.shade200,
      Colors.orange.shade200,
      Colors.brown.shade300,
    ]
  },
  {
    'colors' : [
      Colors.teal.shade100,
      Colors.green.shade300,
      Colors.pink.shade200,
    ]
  },
];
