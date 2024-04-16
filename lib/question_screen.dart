
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currenQuestionIndex = 0;

  void answerQuestion(){
    var maxIndex = questions.length-1;
    setState(() {
      if(currenQuestionIndex<maxIndex){
        currenQuestionIndex++;
      }else{
        currenQuestionIndex=0;
      }
    });
    
    
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currenQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.aBeeZee(
                color:const Color.fromARGB(255, 0, 255, 13),
                fontWeight:FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(answerText: item, onTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
