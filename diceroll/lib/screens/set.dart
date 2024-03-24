import 'package:diceroll/screens/letsroll.dart';
// import 'package:diceroll/screens/styledtext.dart';
import 'package:flutter/material.dart';

var lalignm = Alignment.topLeft;
var ralignm = Alignment.bottomRight;

class Set extends StatelessWidget {
  const Set(this.color1, this.color2, {super.key});

  const Set.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return (Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: lalignm, end: ralignm, colors: [color1, color2])),
        child: const Center(child: Diceroll())));
  }
}
