import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/logo.png',
          width: 300,
          height: 200,
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Try quiz app',
          style: TextStyle(
              color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz, 
          icon: const Icon(Icons.arrow_right_alt_outlined), 
          label: const Text('lets start'),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.amber,
            backgroundColor: Colors.black45,
          )
          )
      ],
    ));
  }
}
