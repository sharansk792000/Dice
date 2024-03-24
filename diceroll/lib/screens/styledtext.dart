import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget {
  const Styledtext(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return (Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 39, 205, 169), fontSize: 28.6),
    ));
  }
}
