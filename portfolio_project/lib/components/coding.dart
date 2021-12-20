import 'package:flutter/material.dart';

import '../constants.dart';
import 'animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.9, label: 'Dart'),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: 'PHP'),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: 'C#'),
        AnimatedLinearProgressIndicator(percentage: 0.65, label: 'HTML'),
        AnimatedLinearProgressIndicator(percentage: 0.65, label: 'CSS'),
        AnimatedLinearProgressIndicator(percentage: 0.58, label: 'JavaScript'),
      ],
    );
  }
}
