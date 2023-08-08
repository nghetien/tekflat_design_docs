import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TitlesPageLayoutMobile extends StatelessWidget {
  const TitlesPageLayoutMobile({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageHeaderWidget(
            title: 'Typography',
            description: S.current.typographyTitle,
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.whenToUse,
            // ignore: prefer_const_constructors
            child: TypographyWhenToUseWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.examples,
            child: TitlesExamplesWidget(),
          ),
          TekVSpace.p32,
          // ignore: prefer_const_constructors
          PageContentContainerWidget(
            title: 'API',
            // ignore: prefer_const_constructors
            child: TitlesAPIsWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.makeAQuestion,
            child: const MakeAQuestionWidget(),
          ),
        ],
      );
}
