import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/images/error_images.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/images/images.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ImagesExamplesWidget extends StatelessWidget {
  ImagesExamplesWidget({super.key});

  List<String> _listText() => [
        S.current.imagesExample1,
        S.current.imagesExample2,
      ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/images/images.dart',
    'lib/src/app/presentations/examples/images/error_images.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          DocsTitleItemWidget(title: _listText()[0]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText()[0]),
          //   pathFileExample: _listPathFile[0],
          //   preview: const ImagesExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText()[1]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText()[1]),
          //   pathFileExample: _listPathFile[1],
          //   preview: const ErrorImagesExampleWidget(),
          // ),
        ],
      );
}
