import 'package:flutter/material.dart';
import 'package:portfolio_project/screens/home_sceen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thoranit Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white)
        // .copyWith(
        //   bodyText1: TextStyle(color: bodyTextColor),
        //   bodyText2: TextStyle(color: bodyTextColor),
        // ),
        // test comment
      ),
      home: HomeScreen(),
    );
  }
}
