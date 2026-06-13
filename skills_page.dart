import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Python",
      "C++",
      "SQL",
      "TensorFlow",
      "PyTorch",
      "Scikit-Learn",
      "NLP",
      "Git",
      "REST API",
      "Firebase",
      "Machine Learning",
      "Data Analysis",
    ];

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Skills",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: skills.map((skill) {
                return Chip(label: Text(skill));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
