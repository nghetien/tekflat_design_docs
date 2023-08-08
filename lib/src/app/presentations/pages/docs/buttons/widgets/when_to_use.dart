import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class ButtonsWhenToUseWidget extends StatelessWidget {
  ButtonsWhenToUseWidget({Key? key}) : super(key: key);

  final List<String> _listText = [
    S.current.buttonWhenToUseDescription1,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DocsTitleItemWidget(
          title: _listText[0],
          maxLines: 5,
        ),
      ],
    );
  }
}
