import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/loadings/app_loading.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/loadings/loading_widget.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/loadings/wrap_loading.dart';
import 'package:flutter/material.dart';

class LoadingExamplesWidget extends StatelessWidget {
  LoadingExamplesWidget({super.key});

  final List<String> _listText = [
    'App Loading',
    'Wrap Loading',
    'Loading Widget',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/loadings/app_loading.dart',
    'lib/src/app/presentations/examples/loadings/wrap_loading.dart',
    'lib/src/app/presentations/examples/loadings/loading_widget.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          DocsTitleItemWidget(title: _listText[0]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[0]),
          //   pathFileExample: _listPathFile[0],
          //   preview: const AppLoadingExampleWidget(),
          // ),
          TekVSpace.p18,
          DocsTitleItemWidget(title: _listText[1]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[1]),
          //   pathFileExample: _listPathFile[1],
          //   preview: const WrapLoadingExampleWidget(),
          // ),
          TekVSpace.p18,
          DocsTitleItemWidget(title: _listText[2]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[2]),
          //   pathFileExample: _listPathFile[2],
          //   preview: const LoadingWidgetExampleWidget(),
          //   heightView: 200,
          // ),
        ],
      );
}
