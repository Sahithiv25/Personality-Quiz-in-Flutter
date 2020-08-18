import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex=questionIndex+1;
    });
  }
  @override
  Widget build(BuildContext context) {
   final  questions = const[
    {'questionText':'What\'s your favourite color?',
      'answers':['Black','Red','Green','White'],
    },
  {
    'questionText':'What\'s your favourite Animal?',
    'answers':['Horse','Dog','elephant','Cow'],
    },
      {
        'questionText':'What\'s your favourite food?',
        'answers':['Biriyani','Pizza','Burger','Cake'],
      },
];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length ?
        Quiz(answerQuestion: answerQuestion,
        questionIndex: questionIndex,
        questions: questions,)
            :Result()
      ),
    );
  }
}
