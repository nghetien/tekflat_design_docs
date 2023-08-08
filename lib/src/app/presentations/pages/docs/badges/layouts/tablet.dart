import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class BadgesPageLayoutTablet extends StatelessWidget {
  const BadgesPageLayoutTablet({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      PageHeaderWidget(
        title: S.current.badges,
        description: S.current.badgesHeader,
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.examples,
        child: BadgesExamplesWidget(),
      ),
      TekVSpace.p32,
      // ignore: prefer_const_constructors
      PageContentContainerWidget(
        title: 'API',
        // ignore: prefer_const_constructors
        child: BadgesAPIsWidget(),
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.makeAQuestion,
        child: const MakeAQuestionWidget(),
      ),
    ],
  );
}
