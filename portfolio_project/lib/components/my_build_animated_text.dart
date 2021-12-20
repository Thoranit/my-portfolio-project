import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_project/constants.dart';
import 'package:portfolio_project/responsive.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text('I build '),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      //repeatForever: true,
      animatedTexts: [
        TyperAnimatedText('resposive web and mobile app.',
            speed: Duration(milliseconds: 80)),
        TyperAnimatedText('complete e-Commerce app UI.',
            speed: Duration(milliseconds: 80)),
        TyperAnimatedText('Chat app with dark and light theme.',
            speed: Duration(milliseconds: 80)),
      ],
    );
  }
}

class FutterCodedText extends StatelessWidget {
  const FutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
        TextSpan(text: '>'),
      ]),
    );
  }
}
