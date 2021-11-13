import 'package:flutter/material.dart';
import '/quiz.dart';
import '/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map> _questions = [
    {
      'questionText': 'Features of a partnership firm are :',
      'answers': [
        {
          'Text':
              'Two or more persons are carrying common business under an agreement.',
          'Score': 0
        },
        {
          'Text': 'They are sharing profits and losses in the fixed ratio.',
          'Score': 0
        },
        {
          'Text':
              'Business is carried by all or any of them acting tor all as an agent.',
          'Score': 0
        },
        {'Text': 'All of the above.', 'Score': 1}
      ]
    },
    {
      'questionText':
          ' X, Y and Z are partners sharing profits and losses equally. Their capital balances on March, 31, 2012 are ₹80,000, ₹60,000 and ₹40,000 respectively. Their personal assets are worth as follows : X — ₹20,000, Y — ₹15,000 and Z — ₹10,000. The extent of their liability in the firm would be :',
      'answers': [
        {'Text': 'X — ₹80,000 : Y — ₹60,000 : and Z — ₹40,000', 'Score': 0},
        {'Text': 'X — ₹20,000 : Y — ₹15,000 : and Z — ₹10,000', 'Score': 1},
        {'Text': 'X — ₹1,00,000 : Y — ₹75,000 : and Z — ₹50,000', 'Score': 0},
        {'Text': 'Equal', 'Score': 0}
      ]
    },
    {
      'questionText':
          'Following are essential elements of a partnership firm except:',
      'answers': [
        {'Text': 'At least two persons', 'Score': 0},
        {'Text': 'There is an agreement between all partners', 'Score': 0},
        {'Text': 'Equal share of profits and losses', 'Score': 1},
        {'Text': 'Partnership agreement is for some business.', 'Score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following is not incorporated in the Partnership Act?',
      'answers': [
        {'Text': 'profit and loss are to be shared equally', 'Score': 0},
        {'Text': 'no interest is to be charged on capital', 'Score': 0},
        {'Text': 'all loans are to be charged interest @6% p.a.', 'Score': 0},
        {'Text': 'all drawings are to be charged interest', 'Score': 1}
      ]
    },
    {
      'questionText':
          ' A, B and C were Partners with capitals of ₹50,000; ₹40,000 and ? 30,000 respectively carrying on business in partnership. The firm’s reported profit for the year was ₹80,000. As per provision of the Indian Partnership Act, 1932, find out the share of each partner in the above amount after taking into account that no interest has been provided on an advance by A of ₹20,000 in addition to his capital contribution.',
      'answers': [
        {
          'Text': '₹26,267 for Partner B and C and ₹27,466 for Partner A.',
          'Score': 1
        },
        {'Text': '₹26,667 each partner.', 'Score': 0},
        {'Text': '₹33,333 for A ₹26,667 for B and ₹20,000 for C.', 'Score': 0},
        {'Text': ' ₹30,000 each partner.', 'Score': 0}
      ]
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(
                  resultScore: _totalScore,
                  resetHandler: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
