import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Diceroll extends StatefulWidget {
  const Diceroll({super.key});
  @override
  State<Diceroll> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<Diceroll> {
  var currdiceroll = 2;
  void rollDice() {
    // var diceroll =
    setState(() {
      currdiceroll = randomizer.nextInt(6) + 1;
    });

    // print("object");
  }

  @override
  Widget build(context) {
    return (Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/dice-$currdiceroll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 45, 42, 42),
            textStyle: const TextStyle(fontSize: 28),
            padding: const EdgeInsets.all(15),
          ),
          child: const Text("Do you wanna roll"),
        )
      ],
    ));
  }
}
