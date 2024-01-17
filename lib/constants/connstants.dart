import 'dart:ui';

import 'package:flutter/material.dart';

final ButtonStyle style =
ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16), backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  ),);
const TextStyle textStyle = TextStyle(color: Colors.white);

List<Map<String, dynamic>>  questionsAndAnswers = [
  {
    "question": "1. What ___ your name?",
    "answers":[
      {"word": "are", "correct": false},
      {"word": "is", "correct": true},
      {"word": "hello", "correct": false},
      {"word": "we", "correct": false},
    ],
  },
  {
    "question": "2. How ___ you?",
    "answers":[
      {"word": "are", "correct": true},
      {"word": "is", "correct": false},
      {"word": "hello", "correct": false},
      {"word": "we", "correct": false},
    ],
  },
  {
    "question": "3. How are ___ ?",
    "answers": [
      {"word": "are", "correct": false},
      {"word": "is", "correct": false},
      {"word": "they", "correct": true},
      {"word": "will", "correct": false},
    ],
  },
  {
    "question": "4. What color ___ you like?",
    "answers": [
      {"word": "are", "correct": false},
      {"word": "is", "correct": false},
      {"word": "do", "correct": true},
      {"word": "will", "correct": false},
    ],
  },
];