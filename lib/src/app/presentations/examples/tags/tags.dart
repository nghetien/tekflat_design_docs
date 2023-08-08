import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class TagsExampleWidget extends StatelessWidget {
  const TagsExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TekTags.success('Tag success'),
      TekVSpace.mainSpace,
      TekTags.info('Tag info'),
      TekVSpace.mainSpace,
      TekTags.warning('Tag warning'),
      TekVSpace.mainSpace,
      TekTags.failure('Tag failure'),
      TekVSpace.mainSpace,
      TekTags.draft('Tag draft'),
    ],
  );
}
