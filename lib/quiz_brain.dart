import 'package:flutter/cupertino.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'Flutter is a cross-platform mobile app development framework.', questionAnswer: true),
    Question(questionText: 'Dart is the programming language used for building Flutter applications.', questionAnswer: true),
    Question(questionText: 'Flutter applications can only be developed for Android devices.', questionAnswer: false),
    Question(questionText: 'Dart is an object-oriented programming language.', questionAnswer: true),
    Question(questionText: 'Flutter is an open-source framework developed by Google.', questionAnswer: true),
    Question(questionText: 'Dart supports both just-in-time (JIT) and ahead-of-time (AOT) compilation.', questionAnswer: true),
    Question(questionText: 'Flutter uses a widget-based UI development approach.', questionAnswer: true),
    Question(questionText: 'Dart supports both single and multiple inheritance.', questionAnswer: false),
    Question(questionText: 'Flutter provides a hot-reload feature for quick UI updates during development.', questionAnswer: true),
    Question(questionText: 'Dart is primarily used for web development and does not have native app development capabilities.', questionAnswer: false),
  ];

  int nextQuestion() {
    if (_questionNumber<_questionBank.length-1) {
      _questionNumber++;
    }
    else {
      _questionNumber=0;
    }
    return _questionNumber;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].getQuestionText();
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].getAnswer();
  }
  int getQuestionMax(){
    return _questionBank.length;
  }
}