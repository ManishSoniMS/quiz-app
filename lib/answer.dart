import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? selectHandler;
  final String answerText;

  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
