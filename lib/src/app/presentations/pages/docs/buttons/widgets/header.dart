import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ButtonsHeaderWidget extends StatelessWidget {
  ButtonsHeaderWidget({Key? key}) : super(key: key);

  final List<String> _listText = [
    S.current.buttonWhenToUseDescription1,
    S.current.buttonWhenToUseDescription2,
    S.current.buttonWhenToUseDescription3,
    S.current.buttonWhenToUseDescription4,
    S.current.buttonWhenToUseDescription5,
    S.current.buttonWhenToUseDescription6,
    S.current.buttonWhenToUseDescription7,
    S.current.buttonWhenToUseDescription8,
    S.current.buttonWhenToUseDescription9,
    S.current.buttonWhenToUseDescription10,
    S.current.buttonWhenToUseDescription11,
    S.current.buttonWhenToUseDescription12,
    S.current.buttonWhenToUseDescription13,
    S.current.buttonWhenToUseDescription14,
    S.current.buttonWhenToUseDescription15,
    S.current.buttonWhenToUseDescription16,
    S.current.buttonWhenToUseDescription17,
    S.current.buttonWhenToUseDescription18,
  ];

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_listText[0]),
          TekVSpace.p18,
          Text(_listText[1]),
          TekVSpace.p8,
          TagInfoItemWidget(
            title: 'DefaultButton',
            description: _listText[2],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'ButtonIcon',
            description: _listText[3],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'InkwellButton',
            description: _listText[4],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'TextButton',
            description: _listText[5],
          ),
          TekVSpace.p8,

          /// -------------------------------
          Text(_listText[6]),
          TekVSpace.p8,
          TagInfoItemWidget(
            title: 'Primary',
            description: _listText[7],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Outline',
            description: _listText[8],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Danger',
            description: _listText[9],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Warning',
            description: _listText[10],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Success',
            description: _listText[11],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Info',
            description: _listText[12],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'None',
            description: _listText[13],
          ),
          TekVSpace.p8,

          /// -------------------------------
          Text(_listText[14]),
          TekVSpace.p8,
          TagInfoItemWidget(
            title: 'Small',
            description: _listText[15],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Medium',
            description: _listText[16],
          ),
          TekVSpace.p4,
          TagInfoItemWidget(
            title: 'Large',
            description: _listText[17],
          ),
        ],
      ),
    );
  }
}
