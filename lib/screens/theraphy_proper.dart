import 'package:flutter/material.dart';

import '/models/answer.dart';
import '/models/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  //final List<Map<String, Object>> academic1_questions;
  final int questionIndex;
  final Function answerQuestions;

  const Quiz(
      {Key? key,
        required this.questions,
        required this.answerQuestions,
        required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 253, 241, 223),
                Colors.white,
              ],
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers']
            as List<Map<String, Object>>)
                .map((answer) {
              return Answer(() => answerQuestions(answer['score']),
                  answer['text'] as String);
            }).toList()
          ],
        ));
  }
}
