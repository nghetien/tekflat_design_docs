import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ButtonsPageLayoutMobile extends StatelessWidget {
  const ButtonsPageLayoutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageHeaderWidget(
            title: S.current.button,
            description: S.current.buttonHeader,
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.whenToUse,
            child: ButtonsHeaderWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.examples,
            child: ButtonsExamplesWidget(),
          ),
          TekVSpace.p32,
          // ignore: prefer_const_constructors
          PageContentContainerWidget(
            title: 'API',
            // ignore: prefer_const_constructors
            child: ButtonsAPIsWidget(),
          ),
          TekVSpace.p32,
          PageContentContainerWidget(
            title: S.current.makeAQuestion,
            child: const MakeAQuestionWidget(),
          ),
        ],
      );
}
