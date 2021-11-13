import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  const Questions({
    Key? key,
    required this.questionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Center(
          child: Text(
            questionText,
            style: const TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
