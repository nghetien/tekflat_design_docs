import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CheckBoxesFormExampleWidget extends StatefulWidget {
  const CheckBoxesFormExampleWidget({super.key});

  @override
  State<CheckBoxesFormExampleWidget> createState() => _CheckBoxesFormExampleWidgetState();
}

class _CheckBoxesFormExampleWidgetState extends State<CheckBoxesFormExampleWidget> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  void _handleGetValues() {
    if (_formKey.currentState?.validate() ?? false) {
      TekLogger.debugLog({
        'checkbox1': _formKey.currentState?.fields['checkbox1']?.value,
        'checkbox2': _formKey.currentState?.fields['checkbox2']?.value,
        'checkbox3': _formKey.currentState?.fields['checkbox3']?.value,
        'checkbox4': _formKey.currentState?.fields['checkbox4']?.value,
      });
    }
  }

  @override
  Widget build(BuildContext context) => FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TekButton(
              text: 'Submit',
              onPressed: _handleGetValues,
              type: TekButtonType.primary,
              
            ),
            TekVSpace.mainSpace,
             TekCheckBoxForm(
              name: 'checkbox1',
              title: 'Checkbox 1',
            ),
             TekCheckBoxForm(
              name: 'checkbox2',
              enabled: false,
               title: 'Checkbox 2',
            ),
             TekCheckBoxForm(
              name: 'checkbox3',
               title: 'Checkbox 3',
            ),
             TekCheckBoxForm(
              name: 'checkbox4',
               title: 'Checkbox 4',
            ),
          ],
        ),
      );
}
