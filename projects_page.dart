import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Projects",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 40),

          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: const [
                  Text(
                    "YouTube Audience Insight Engine",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Audience behavior analysis, sentiment analysis, trend detection and recommendation engine using Machine Learning and NLP.",
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Python • NLP • ML • YouTube API",
                    style: TextStyle(color: Color(0xFFB497D6)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
