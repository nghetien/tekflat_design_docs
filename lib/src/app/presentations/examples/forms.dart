import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:tekflat_design/tekflat_design.dart';

class DemoUserModel {
  final String name;
  final String email;

  const DemoUserModel({
    required this.name,
    required this.email,
  });
}

const List<DemoUserModel> _listDemoUserModel = [
  DemoUserModel(name: 'John Doe', email: 'johndoe@gmail.com'),
  DemoUserModel(name: 'Sheraphine', email: 'sheraphine@mail.com'),
  DemoUserModel(name: 'Join Snow', email: 'joinsnow@gmail.com'),
  DemoUserModel(name: 'Jin Kazama', email: 'jinkazama@gmail.com'),
];

class FormsExampleWidget extends StatefulWidget {
  const FormsExampleWidget({super.key});

  @override
  State<FormsExampleWidget> createState() => _FormsExampleWidgetState();
}

class _FormsExampleWidgetState extends State<FormsExampleWidget> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  void _handleSubmit() {
    if (_fbKey.currentState?.validate() ?? false) {
      TekLogger.debugLog({
        'checkbox': _fbKey.currentState?.fields['checkbox']?.value,
        'radio1': _fbKey.currentState?.fields['radio1']?.value,
        'radio2': _fbKey.currentState?.fields['radio2']?.value,
        'text': _fbKey.currentState?.fields['text']?.value,
        'dropdown': _fbKey.currentState?.fields['dropdown']?.value,
        'datetime': _fbKey.currentState?.fields['datetime']?.value,
      });
    }
  }

  @override
  Widget build(BuildContext context) => TekCard(
        backgroundColor: TekColors.greyOpacity01,
        child: FormBuilder(
          key: _fbKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const TekTypography(text: 'Form', type: TekTypographyType.level5),
              TekVSpace.mainSpace,
              const TekCheckBoxForm(
                name: 'checkbox',
                type: TekCheckBoxType.check,
                title: 'Checkbox',
              ),
              TekVSpace.mainSpace,
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 100,
                    child: TekCheckBoxForm(
                      name: 'radio1',
                      type: TekCheckBoxType.radio,
                      title: 'Radio1',
                    ),
                  ),
                  TekHSpace.mainSpace,
                  const SizedBox(
                    width: 100,
                    child: TekCheckBoxForm(
                      name: 'radio2',
                      type: TekCheckBoxType.radio,
                      title: 'Radio2',
                    ),
                  ),
                ],
              ),
              TekVSpace.mainSpace,
              const Text('Text '),
              TekInput(
                name: 'text',
                width: 400,
                hintText: 'Enter text here',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(10),
                ]),
              ),
              TekVSpace.mainSpace,
              const Text('Dropdown'),
              TekInputDropdown<DemoUserModel>(
                name: 'dropdown',
                width: 400,
                hintText: 'Select User',
                // prefixIcon: const Icon(Icons.person),
                menuChildren: _listDemoUserModel.map((e) {
                  return TekInputDropdownItemModel<DemoUserModel>(
                    keyValue: e.email,
                    value: e,
                    label: '${e.name}: ${e.email}',
                  );
                }).toList(),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              TekVSpace.mainSpace,
              const Text('Datetime'),
              TekInputDateTime(
                name: 'datetime',
                width: 400,
                hintText: 'Select Date',
                type: TekInputDateTimeType.date,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              TekVSpace.mainSpace,
              TekButton(
                onPressed: _handleSubmit,
                size: TekButtonSize.large,
                type: TekButtonType.primary,
                text: 'Submit',
              ),
            ],
          ),
        ),
      );
}
