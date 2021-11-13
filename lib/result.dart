import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final void Function()? resetHandler;

  const Result({
    Key? key,
    required this.resultScore,
    required this.resetHandler,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String? resultText;

  String? get resultPhrase {
    if (widget.resultScore >= 5) {
      resultText = 'You are awesome!';
    } else if (widget.resultScore >= 4) {
      resultText = 'You are pretty Good!';
    } else if (widget.resultScore >= 3) {
      resultText = 'You need more Practice!';
    } else {
      resultText = 'You are so Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: widget.resetHandler,
          child: const Text(
            'Restart Quiz!',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          textColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}
