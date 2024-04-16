import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Result screen !',
              style: GoogleFonts.aBeeZee(
                  color: const Color.fromARGB(255, 0, 255, 13),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(onPressed: () {}, child: const Text('return'))
          ],
        ),
      ),
    );
  }
}
