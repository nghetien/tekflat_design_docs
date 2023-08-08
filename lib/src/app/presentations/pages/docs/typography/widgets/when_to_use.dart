import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class TypographyWhenToUseWidget extends StatelessWidget {
  const TypographyWhenToUseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p4,
        DocsTitleItemWidget(
          title: S.current.typographyWhenToUse1,
          maxLines: 5,
        ),
        TekVSpace.p8,
        DocsTitleItemWidget(
          title: S.current.typographyWhenToUse2,
          maxLines: 5,
        ),
      ],
    );
  }
}
