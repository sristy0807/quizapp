import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }

}


class _QuestionScreenState extends State<QuestionScreen>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('question screen',
        style: TextStyle(
          color: Color.fromARGB(255, 229, 255, 0),
        ),
      ),
    );
  }

}