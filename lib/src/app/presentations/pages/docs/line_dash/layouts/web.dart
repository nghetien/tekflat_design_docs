import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class LineDashPageLayoutWeb extends StatelessWidget {
  const LineDashPageLayoutWeb({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageHeaderWidget(
            title: S.current.lineDash,
            description: S.current.lineDashHeader,
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.examples,
            child: LineDashExamplesWidget(),
          ),
          TekVSpace.p32,
          // ignore: prefer_const_constructors
          PageContentContainerWidget(
            title: 'API',
            // ignore: prefer_const_constructors
            child: LineDashAPIsWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.makeAQuestion,
            child: const MakeAQuestionWidget(),
          ),
        ],
      );
}
