import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: summaryData.map((data) {
            var isCorrect = data['user_answer'] == data['correct_answer']
            ?true
            :false;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: isCorrect
                        ? Colors.cyan
                        : const Color.fromARGB(255, 217, 0, 255),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                            ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(data['user_answer'] as String,
                      style: const TextStyle(
                            color:  Color.fromARGB(255, 217, 0, 255),
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                            ),
                      ),
                      Text(data['correct_answer'] as String,
                      style: const TextStyle(
                            color: Color.fromARGB(255, 141, 141, 141),
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                            ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
