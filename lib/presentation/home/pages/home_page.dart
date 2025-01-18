import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../widgets/header_home.dart';
import '../widgets/menu_home.dart';
import '../widgets/title_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeaderHome(),
          const SizedBox(height: 24.0),
          TitleSection(
            title: 'Beranda',
            onSeeAllTap: () {},
          ),
          const SizedBox(height: 16.0),
          GridView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 24.0,
            ),
            children: [
              MenuHome(
                imagePath: Assets.images.menu.aboutUs.path,
                label: 'Company Profile',
                onPressed: () {
                  // context.push(const AboutUsPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.tips.path,
                label: 'Data Catalog',
                onPressed: () {
                  // context.push(const TipsAndTricksPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.materi.path,
                label: 'Data Sheet',
                onPressed: () {
                  // context.push(const MateriPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.quiz.path,
                label: 'About Us',
                onPressed: () async {
                  // await startKioskMode();
                  // context.push(const QuizListPage());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
