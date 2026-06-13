import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Experience",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 40),

          experienceCard(
            title: "Web Development Intern",
            company: "Altruisty",
            description:
                "Built communication platform connecting HR, mentors and interns. Implemented Firebase authentication and automated email workflows.",
          ),

          const SizedBox(height: 20),

          experienceCard(
            title: "Eco-Sweep Autonomous Robo",
            company: "Sri Sairam Techno Incubation",
            description:
                "Developed AI-powered waste management solution using IoT, Machine Learning and cloud analytics.",
          ),
        ],
      ),
    );
  }

  Widget experienceCard({
    required String title,
    required String company,
    required String description,
  }) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(company, style: const TextStyle(color: Color(0xFFB497D6))),

            const SizedBox(height: 15),

            Text(description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
