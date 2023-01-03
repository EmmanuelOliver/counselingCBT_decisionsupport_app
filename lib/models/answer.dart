import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.deepOrange,
      ),
      child: SizedBox(

        width: 40,
        height: 40,
        child: TextButton(
          child: Text(
            answerText,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),

          ),
          onPressed: selectHandler,
        ),
      ),
      // color: Colors.amberAccent,
    );

  }
}