import 'package:flutter/material.dart';

import '../../constants/connstants.dart';

class Question extends StatelessWidget {
  final Map<String, dynamic> question;
  final Function(bool) answerQuestion;

  const Question({
    super.key,
    required this.question,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(question['question'].toString(),
            style: const TextStyle(fontSize: 25)),
        ElevatedButton(
          style: style,
          onPressed: () => answerQuestion(question['answers'][0]['correct']),
          child: Text(question['answers'][0]['word'], style: textStyle),
        ),
        ElevatedButton(
          style: style,
          onPressed: () => answerQuestion(question['answers'][1]['correct']),
          child: Text(question['answers'][1]['word'], style: textStyle),
        ),
        ElevatedButton(
          style: style,
          onPressed: () => answerQuestion(question['answers'][2]['correct']),
          child: Text(question['answers'][2]['word'], style: textStyle),
        ),
        ElevatedButton(
          style: style,
          onPressed: () => answerQuestion(question['answers'][3]['correct']),
          child: Text(question['answers'][3]['word'], style: textStyle),
        ),
      ],
    );
  }
}
