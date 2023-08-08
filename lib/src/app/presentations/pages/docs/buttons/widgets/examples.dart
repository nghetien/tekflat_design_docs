import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/disabled.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/link.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/loading.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/size.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/type.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class ButtonsExamplesWidget extends StatelessWidget {
  ButtonsExamplesWidget({Key? key}) : super(key: key);

  final _listPathFile = [
    'lib/src/app/presentations/examples/buttons/type.dart',
    'lib/src/app/presentations/examples/buttons/size.dart',
    'lib/src/app/presentations/examples/buttons/loading.dart',
    'lib/src/app/presentations/examples/buttons/disabled.dart',
    'lib/src/app/presentations/examples/buttons/link.dart',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p8,
        ExampleBlockWidget(
          preview: const ButtonTypeExampleWidget(),
          title: S.current.type,
          description: Text(S.current.buttonType),
          pathFileExample: _listPathFile[0],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const ButtonSizeExampleWidget(),
          title: S.current.size,
          description: Text(S.current.buttonSize),
          pathFileExample: _listPathFile[1],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const ButtonLoadingExampleWidget(),
          title: S.current.loading,
          description: Text(S.current.buttonLoading),
          pathFileExample: _listPathFile[2],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const ButtonDisabledExampleWidget(),
          title: S.current.disabled,
          description: Text(S.current.buttonDisabled),
          pathFileExample: _listPathFile[3],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const ButtonLinkExampleWidget(),
          title: 'Link',
          description: Text(S.current.buttonLink),
          pathFileExample: _listPathFile[4],
        ),
      ],
    );
  }
}
