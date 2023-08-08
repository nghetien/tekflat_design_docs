import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class CheckBoxesExampleWidget extends StatefulWidget {
  const CheckBoxesExampleWidget({super.key});

  @override
  State<CheckBoxesExampleWidget> createState() => _CheckBoxesExampleWidgetState();
}

class _CheckBoxesExampleWidgetState extends State<CheckBoxesExampleWidget> {
  bool _valueCheck = false;
  bool _valueRadio = false;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekCheckBox(
            type: TekCheckBoxType.check,
            title: 'TekCheckBoxType.check',
            value: _valueCheck,
            onChanged: (bool? value) => setState(() => _valueCheck = value ?? false),
          ),
          TekCheckBox(
            type: TekCheckBoxType.radio,
            title: 'TekCheckBoxType.radio',
            value: _valueRadio,
            onChanged: (bool? value) => setState(() => _valueRadio = value ?? false),
          ),
        ],
      );
}
