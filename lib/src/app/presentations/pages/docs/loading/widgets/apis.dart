import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class LoadingAPIsWidget extends StatelessWidget {
  const LoadingAPIsWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'TekLoadingController'),
          TekVSpace.p8,
          TekTypography(
            text: '${S.current.updating}...',
            type: TekTypographyType.level5,
          ),
        ],
      );
}
