import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase1 {
    String resultText = ' ';
    if(resultScore == -1) {
      resultText = '\nNo Path Yet';
    } else if (resultScore >= 7) {
      resultText = '\nDistinction \n Keep Prioritize your task. \n Maintain Coping Strategy.';
    } else if (resultScore >= 4) {
      resultText = '\nAverage\n Done better but you can still do the best. \n Maintain Coping Strategy.';
    } else {
      resultText = '\nNeed Improvement \n Embrace negative situation, \n It is part of your progress.'
          '\n All hard times have a lesson ';
    }
    return resultText;
  }
  String get resultPhrase2 {
    String resultText = ' ';
    if(resultScore == -1) {
      resultText = ' ';
    } else if (resultScore >= 8) {
      resultText = 'GROW Model \n SMART Goals' ;
    } else if (resultScore >= 5) {
      resultText = 'SMART Goals \n Academic Responsibility';
    } else {
      resultText = 'GROW Model \n Academic Motivation \n Intrinsic Motivation Theory';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
           '\nCounselors Note',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase2,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase1,
            style: const TextStyle(fontSize: 18,),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text(
              'New Theraphy',
              style: TextStyle(color: Colors.deepOrangeAccent),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}