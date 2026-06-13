import 'package:flutter/material.dart';

import 'pages/hero_page.dart';
import 'pages/summary_page.dart';
import 'pages/education_page.dart';
import 'pages/experience_page.dart';
import 'pages/projects_page.dart';
import 'pages/skills_page.dart';
import 'pages/achievements_page.dart';
import 'pages/certifications_page.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Divya Portfolio",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF8F5),
        fontFamily: 'Poppins',
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final PageController controller = PageController();

  void goToPage(int page) {
    controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            children: [
              HeroPage(onNext: () => goToPage(1)),
              const SummaryPage(),
              const EducationPage(),
              const ExperiencePage(),
              const ProjectsPage(),
              const SkillsPage(),
              const AchievementsPage(),
              const CertificationsPage(),
              const ContactPage(),
            ],
          ),

          Positioned(
            right: 20,
            top: MediaQuery.of(context).size.height / 2 - 120,
            child: Column(children: [for (int i = 0; i < 9; i++) navButton(i)]),
          ),
        ],
      ),
    );
  }

  Widget navButton(int page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => goToPage(page),
        child: Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: const Color(0xFFB497D6),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
