import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;

  void buttonPressed () {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                buttonPressed();
              },

              child: Image.asset('images/dice$leftDiceButton.png')),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                buttonPressed();
              },
              child: Image.asset('images/dice$rightDiceButton.png')),
        ),
      ]),
    );
  }
}
