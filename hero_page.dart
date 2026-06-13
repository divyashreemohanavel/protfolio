import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroPage extends StatelessWidget {
  final VoidCallback onNext;

  const HeroPage({super.key, required this.onNext});

  Future<void> openResume() async {
    final Uri uri = Uri.parse(
      'https://raw.githubusercontent.com/divyashreemohanavel/resume/main/Divya_Resume.pdf',
    );

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch resume');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAF8F5),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "DIVYA SHREE M",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              const Text(
                "Aspiring Machine Learning Engineer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFB497D6),
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Passionate about Machine Learning,\nAI, Data Science and building\nreal-world intelligent applications.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, height: 1.7),
              ),

              const SizedBox(height: 50),

              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onNext,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB497D6),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 16,
                      ),
                    ),
                    child: const Text("Explore Portfolio"),
                  ),

                  OutlinedButton.icon(
                    onPressed: openResume,
                    icon: const Icon(Icons.picture_as_pdf),
                    label: const Text("Resume"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
