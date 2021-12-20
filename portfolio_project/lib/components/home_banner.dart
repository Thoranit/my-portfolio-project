import 'package:flutter/material.dart';
import 'package:portfolio_project/responsive.dart';

import '../constants.dart';
import 'my_build_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background-image.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Discover my Amazing \nArt Space!',
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)
                    : Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
              ),
              if (Responsive.isMobileLarge(context))
                const SizedBox(height: defaultPadding / 2),
              MyBuildAnimatedText(),
              SizedBox(height: defaultPadding),
              if (!Responsive.isMobileLarge(context))
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    )),
            ],
          ),
        ],
      ),
    );
  }
}
