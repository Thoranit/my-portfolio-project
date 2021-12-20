import 'package:flutter/material.dart';

import '../constants.dart';
import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimtedCirCularProgressIndicator(
                percentage: 0.9,
                label: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimtedCirCularProgressIndicator(
                percentage: 0.75,
                label: 'MYSQL',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimtedCirCularProgressIndicator(
                percentage: 0.70,
                label: 'PHP',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
