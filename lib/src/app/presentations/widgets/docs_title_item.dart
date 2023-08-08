import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class DocsTitleItemWidget extends StatelessWidget {
  const DocsTitleItemWidget({
    Key? key,
    required this.title,
    this.fontStyle,
    this.maxLines,
  }) : super(key: key);

  final String title;
  final FontStyle? fontStyle;
  final int? maxLines;

  @override
  Widget build(BuildContext context) => Text(
        "- $title",
        style: TekTextStyles.body.copyWith(
          fontStyle: fontStyle,
        ),
        maxLines: maxLines,
      );
}
