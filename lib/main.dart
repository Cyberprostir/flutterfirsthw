import 'package:flutter/material.dart';

import 'card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<CardInfo> _listOfCards = [];

  @override
  void initState() {
    super.initState();
  }

  void generateCardInfo(){
    for (int i = 0; i < 3; i++) {
      _listOfCards.add(CardInfo(
          title: 'Title $i',
          numberOfCard: i
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: List.generate(10, (index) {
            return PictureItem(
              imagePath: 'images/lake.jpg',
              circleText: '#$index.',
              callColor: Colors.green,
              routeColor: Colors.blue,
              shareColor: Colors.black,
            );
          }),
        ),
      ),
    );
  }
}

class CardInfo {
  final String title;
  final int numberOfCard;
  final String imageURL;

  CardInfo({
    required this.title,
    required this.numberOfCard,
    this.imageURL = 'assets/images/lake.jpg',
  });

}

