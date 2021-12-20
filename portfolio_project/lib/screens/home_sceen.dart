import 'package:flutter/material.dart';
import 'package:portfolio_project/components/high_light_info.dart';
import 'package:portfolio_project/components/home_banner.dart';
import 'package:portfolio_project/components/my_projects.dart';
import 'package:portfolio_project/components/recomendations.dart';
import 'package:portfolio_project/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HightLightInfo(),
      MyProjects(),
      Recommendations(),
    ]);
  }
}
