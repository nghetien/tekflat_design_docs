import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TagsPageLayoutTablet extends StatelessWidget {
  const TagsPageLayoutTablet({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      PageHeaderWidget(
        title: S.current.tags,
        description: S.current.tagsHeader,
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.examples,
        child: TagsExamplesWidget(),
      ),
      TekVSpace.p32,
      // ignore: prefer_const_constructors
      PageContentContainerWidget(
        title: 'API',
        // ignore: prefer_const_constructors
        child: TagsAPIsWidget(),
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.makeAQuestion,
        child: const MakeAQuestionWidget(),
      ),
    ],
  );
}
