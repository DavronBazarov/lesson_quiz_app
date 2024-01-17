import 'package:flutter/material.dart';

import '../../constants/connstants.dart';
import '../widgets/questions.dart';
import '../widgets/result.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentQuestionIndex = 0;
  int countOfTrue = 0;
  int countOfFalse = 0;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16), backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),);
    const TextStyle textStyle = TextStyle(color: Colors.white);
    return  Scaffold(
        appBar: AppBar(title: const Text("Ingliz tili Quiz", style: textStyle,), centerTitle: true,
          backgroundColor: Colors.blue,),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: currentQuestionIndex<questionsAndAnswers.length ?
          Question(question: questionsAndAnswers[currentQuestionIndex], answerQuestion: answerQuestion,)
              : Result(countOfTrue: countOfTrue, countOfFalse: countOfFalse, restart: restart),
        ),
      );
  }
  void restart(){
    setState(() {
      currentQuestionIndex = 0;
      countOfTrue = 0;
      countOfFalse = 0;
    });
  }
  void answerQuestion(bool trueAnswer) {
    if(trueAnswer){
      countOfTrue++;
    }else{
      countOfFalse++;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }
}