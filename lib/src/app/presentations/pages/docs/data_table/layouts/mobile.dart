import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class DataTablePageLayoutMobile extends StatelessWidget {
  const DataTablePageLayoutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PageHeaderWidget(
          title: S.current.dataTable,
          description: S.current.dataTableHeader,
        ),
        TekVSpace.p32,
        PageContentContainerWidget(
          title: S.current.whenToUse,
          // ignore: prefer_const_constructors
          child: DatatableWhenToUseWidget(),
        ),
        TekVSpace.p32,
        PageContentContainerWidget(
          title: S.current.examples,
          // ignore: prefer_const_constructors
          ableToFeedback: true,
          child: DataTableExamplesWidget(),
        ),
        TekVSpace.p32,
        // ignore: prefer_const_constructors
        PageContentContainerWidget(
          title: 'API',
          // ignore: prefer_const_constructors
          child: DataTableAPIsWidget(),
        ),
        TekVSpace.p32,
        PageContentContainerWidget(
          title: S.current.makeAQuestion,
          child: const MakeAQuestionWidget(),
        ),
      ],
    );
  }
}
