import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's Connect",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text(
              "divyashreemohanavel@gmail.com",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 40),

            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    openUrl('https://github.com/divyashreemohanavel');
                  },
                  icon: const Icon(Icons.code),
                  label: const Text("GitHub"),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    openUrl(
                      'https://www.linkedin.com/in/divya-shree-mohanavel-',
                    );
                  },
                  icon: const Icon(Icons.business_center),
                  label: const Text("LinkedIn"),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    openUrl('mailto:divyashreemohanavel@gmail.com');
                  },
                  icon: const Icon(Icons.email),
                  label: const Text("Email"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
