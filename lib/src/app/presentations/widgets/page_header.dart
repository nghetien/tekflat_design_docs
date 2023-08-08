import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class PageHeaderWidget extends StatelessWidget {
  const PageHeaderWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TekTextStyles.headline.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: TekFontSizes().s36,
          ),
        ),
        TekVSpace.p4,
        Text(
          description,
          maxLines: 10,
        ),
      ],
    );
  }
}
