import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';

class DocsTitleItemWidget extends StatelessWidget {
  const DocsTitleItemWidget({
    Key? key,
    required this.title,
    this.fontStyle,
  }) : super(key: key);

  final String title;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) => SelectionArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.minus,
              size: 11,
            ),
            TekHSpace.p8,
            Text(
              title,
              style: TekTextStyles.body.copyWith(
                fontStyle: fontStyle,
              ),
            ),
          ],
        ),
      );
}
