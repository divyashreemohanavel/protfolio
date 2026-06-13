import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Achievements",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 40),

            ListTile(
              leading: Icon(Icons.emoji_events),
              title: Text("Xynthra Hackathon Winner"),
            ),

            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Patent Publication - Eco Sweep Robo"),
            ),

            ListTile(
              leading: Icon(Icons.star),
              title: Text("Smart India Hackathon Winner"),
            ),
          ],
        ),
      ),
    );
  }
}
