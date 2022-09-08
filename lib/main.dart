// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:zipf/flashCards/flashcard_view.dart';
import 'package:zipf/flashCards/flashcard.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flashcard> _flascards = [
    Flashcard(question: "blah blah blah?", answer: "blah blah!"),
    Flashcard(question: "bleh bleh bleh?", answer: "bleh bleh..."),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext contxt) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 230,
                height: 300,
                child: FlipCard(
                  front:
                      FlashcardView(text: _flascards[_currentIndex].question),
                  back: FlashcardView(text: _flascards[_currentIndex].answer),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left),
                      label: Text('Prev')),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      label: Text('Next')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
