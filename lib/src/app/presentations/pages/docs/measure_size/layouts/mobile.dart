import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TekMeasureSizePageLayoutMobile extends StatelessWidget {
  const TekMeasureSizePageLayoutMobile({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageHeaderWidget(
            title: S.current.measureSize,
            description: S.current.measureSizeHeader,
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.examples,
            ableToFeedback: true,
            child: TekMeasureSizeExamplesWidget(),
          ),
          TekVSpace.p32,
          // ignore: prefer_const_constructors
          PageContentContainerWidget(
            title: 'API',
            ableToFeedback: true,
            // ignore: prefer_const_constructors
            child: TekMeasureSizeAPIsWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.makeAQuestion,
            child: const MakeAQuestionWidget(),
          ),
        ],
      );
}
