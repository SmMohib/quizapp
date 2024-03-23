
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'screens/quiz/quiz_screen.dart';

class AllQuizList extends StatelessWidget {
  AllQuizList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ));
                },
                child: Container(
                  height: 44.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 2, 173, 102),
                        Colors.blue
                      ])),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const QuizScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: const Text('Dart Quiz'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
