import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'recommendation.dart';
import 'theraphy_proper.dart';

void main() => runApp(const TheraphyProcess());

class TheraphyProcess extends StatefulWidget {
  const TheraphyProcess({Key? key}) : super(key: key);
  static const routName = '/therapy_process';
  @override
  State<StatefulWidget> createState() {
    return _TheraphyProcessState();
  }
}

class _TheraphyProcessState extends State<TheraphyProcess> {
  final _questions = const [
    {
      'questionText': 'Select Situation',
      'answers': [
        {'text': 'Academic', 'score': 0, 'type': 'a'},
        {'text': '🔒Vocational', 'score': -1, 'type': 'v'},
        {'text': '🔒Personal-Social', 'score': -1, 'type': 'p'},

      ],
    },
    {
      'questionText':
      'Select Academic Situation ',
      'answers': [
        {'text': 'Academics Difficulties', 'score': 0, 'type': 'a1'},
        {'text': '🔒Academic Stress', 'score': -1, 'type': 'a2'},
        {'text': '🔒Learning Styles', 'score': -1, 'type': 'a3'},
        {'text': '🔒Study Skills', 'score': -1, 'type': 'a4'},
      ],
    },
   {
      'questionText': 'What is your current thoughts?',
      'answers': [
        {'text': 'Difficulties', 'score': 0, 'type': 't1'},

      ],
    },
    {
      'questionText': 'Rate your Thoughts (1-5)?',
      'answers': [
        {'text': '1', 'score': 1},
        {'text': '2', 'score': 2},
        {'text': '3', 'score': 3},
        {'text': '4', 'score': 4},
        {'text': '5', 'score': 5},
      ],
    },
    {
      'questionText': 'What is your current behavior?',
      'answers': [
        {'text': 'Performance', 'score': 0},
        {'text': '🔒Consistency', 'score': -1},
      ],
    },
    {
      'questionText': 'Rate your Behavior (1-5)?',
      'answers': [
        {'text': '1', 'score': 1},
        {'text': '2', 'score': 2},
        {'text': '3', 'score': 3},
        {'text': '4', 'score': 4},
        {'text': '5', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _restartProcess() {
    setState(() {});
    _questionIndex = 0;
    _totalscore = 0;
  }

  void _answerQuestions(int score) {
    //var aBool=true;
    _totalscore = _totalscore + score;
    setState(() {
      if(score == -1){
        _questionIndex = _questions.length;
      }
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cognitive-Behavioral Theraphy'),
        backgroundColor: Colors.deepOrange,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
        answerQuestions: _answerQuestions,
        questionIndex: _questionIndex,
        questions: _questions,
      ) //
          : Result(_totalscore, _restartProcess),
    );
  }
}