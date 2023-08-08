import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class DividerPageLayoutMobile extends StatelessWidget {
  const DividerPageLayoutMobile({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      PageHeaderWidget(
        title: S.current.divider,
        description: S.current.dividerHeader,
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.examples,
        child: DividerExamplesWidget(),
      ),
      TekVSpace.p32,
      // ignore: prefer_const_constructors
      PageContentContainerWidget(
        title: 'API',
        // ignore: prefer_const_constructors
        child: DividerAPIsWidget(),
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.makeAQuestion,
        child: const MakeAQuestionWidget(),
      ),
    ],
  );
}
