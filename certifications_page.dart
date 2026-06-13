import 'package:flutter/material.dart';

class CertificationsPage extends StatelessWidget {
  const CertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Certifications",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            certificateCard(
              "Python Programming",
              "Completed certification in Python programming and problem solving.",
            ),

            const SizedBox(height: 20),

            certificateCard(
              "Machine Learning",
              "Covered supervised learning, classification, regression and model evaluation.",
            ),

            const SizedBox(height: 20),

            certificateCard(
              "Data Science",
              "Focused on data analysis, visualization and predictive modeling.",
            ),
          ],
        ),
      ),
    );
  }

  Widget certificateCard(String title, String description) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
