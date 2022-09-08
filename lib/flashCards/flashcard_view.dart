// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  final String text;

  const FlashcardView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Color.fromARGB(255, 142, 159, 150),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
