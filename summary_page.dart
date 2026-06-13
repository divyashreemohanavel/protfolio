import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "About Me",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 40),

            Text(
              "Aspiring Machine Learning Engineer with a strong foundation in programming and object-oriented design. Experienced in building data-driven applications using Python and machine learning libraries. Passionate about solving real-world problems through AI, rapid prototyping, and intelligent systems.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, height: 1.8),
            ),
          ],
        ),
      ),
    );
  }
}
