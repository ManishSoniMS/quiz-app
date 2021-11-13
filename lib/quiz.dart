import 'package:flutter/material.dart';
import '/answer.dart';
import '/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestion(answer['Score']),
            answerText: answer['Text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
