import 'package:flutter/material.dart';
import 'package:portfolio_project/constants.dart';
import 'package:portfolio_project/model/recomendation.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendations,
  }) : super(key: key);

  final Recommendation recommendations;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendations.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendations.source!,
          ),
          const SizedBox(height: defaultPadding),
          Text(
            recommendations.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
