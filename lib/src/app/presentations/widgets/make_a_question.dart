import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class MakeAQuestionWidget extends StatelessWidget {
  const MakeAQuestionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TekVSpace.p4,
        TekButton(
          onPressed: () => htmlWindowOpen(
            'https://github.com/nghetien/tekflat_design/issues',
            'Github',
          ),
          text: 'Issues',
          iconData: FontAwesomeIcons.github,
          type: TekButtonType.primary,
        ),
      ],
    );
  }
}
