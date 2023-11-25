
class Question {
  String  questionText="";
  bool    questionAnswer=false;

  Question({this.questionText="", this.questionAnswer=false});

  String getQuestionText(){
    return questionText;
  }
  bool getAnswer() {
    return questionAnswer;
  }
}