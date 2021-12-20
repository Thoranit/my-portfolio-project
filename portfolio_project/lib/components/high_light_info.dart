import 'package:flutter/material.dart';
import 'package:portfolio_project/components/animated_counter.dart';
import 'package:portfolio_project/components/highlight.dart';
import 'package:portfolio_project/constants.dart';
import 'package:portfolio_project/responsive.dart';

class HightLightInfo extends StatelessWidget {
  const HightLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HightLight(
                      counter: AnimatedCounter(value: 119, text: 'K+'),
                      label: 'Subscribers',
                    ),
                    HightLight(
                      counter: AnimatedCounter(value: 40, text: '+'),
                      label: 'Videos',
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HightLight(
                      counter: AnimatedCounter(value: 30, text: '+'),
                      label: 'GitHub Projects',
                    ),
                    HightLight(
                      counter: AnimatedCounter(value: 13, text: 'K+'),
                      label: 'Stars',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HightLight(
                  counter: AnimatedCounter(value: 119, text: 'K+'),
                  label: 'Subscribers',
                ),
                HightLight(
                  counter: AnimatedCounter(value: 40, text: '+'),
                  label: 'Videos',
                ),
                HightLight(
                  counter: AnimatedCounter(value: 30, text: '+'),
                  label: 'GitHub Projects',
                ),
                HightLight(
                  counter: AnimatedCounter(value: 13, text: 'K+'),
                  label: 'Stars',
                ),
              ],
            ),
    );
  }
}
