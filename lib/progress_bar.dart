import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressBar extends StatelessWidget{
  const ProgressBar({super.key, required this.currentQuestion, required this.totalQuestions, required this.size});

  final int currentQuestion;
  final int totalQuestions;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircularStepProgressIndicator(
        totalSteps: totalQuestions * 10,
        currentStep: currentQuestion * 10,
        stepSize: 10,
        selectedColor: const Color.fromARGB(255, 73, 149, 89),
        unselectedColor: const Color.fromARGB(255, 171, 171, 171),
        padding: 0,
        width: size,
        height: size,
        selectedStepSize: 15,
        roundedCap: (_, __) => true,
    );
  }
}