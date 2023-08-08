import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ButtonsPageLayoutTablet extends StatelessWidget {
  const ButtonsPageLayoutTablet({Key? key}) : super(key: key);

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
        child: ButtonsWhenToUseWidget(),
      ),
      TekVSpace.p32,
      PageContentContainerWidget(
        title: S.current.examples,
        ableToFeedback: true,
        child: ButtonsExamplesWidget(),
      ),
      TekVSpace.p32,
      // ignore: prefer_const_constructors
      PageContentContainerWidget(
        title: 'API',
        ableToFeedback: true,
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
