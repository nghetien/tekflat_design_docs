import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class TagInfoItemWidget extends StatelessWidget {
  const TagInfoItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: TekSpacings().mainSpacing),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        children: <Widget>[
          TekTags.draft(
            title,
            padding: EdgeInsets.symmetric(
              horizontal: TekSpacings().p4,
              vertical: TekSpacings().p4 / 2,
            ),
          ),
          Text(': $description'),
        ],
      ),
    );
  }
}
