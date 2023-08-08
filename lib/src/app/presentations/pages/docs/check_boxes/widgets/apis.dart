import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class CheckBoxesAPIsWidget extends StatelessWidget {
  const CheckBoxesAPIsWidget({super.key});

  List<APITableModel> _getDataSourceCheckboxes() => [
    APITableModel(
      id: 1,
      property: 'type',
      description: S.current.checkboxesAPIDescription1,
      type: 'TekCheckBoxType',
      defaultValue: 'TekCheckBoxType.check',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'value',
      description: S.current.checkboxesAPIDescription2,
      type: 'bool',
      defaultValue: 'false',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'onChanged',
      description: S.current.checkboxesAPIDescription3,
      type: 'ValueChanged<bool?>',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'activeColor',
      description: S.current.checkboxesAPIDescription4,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'checkColor',
      description: S.current.checkboxesAPIDescription5,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 6,
      property: 'space',
      description: S.current.checkboxesAPIDescription6,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 7,
      property: 'titleWidget',
      description: S.current.checkboxesAPIDescription7,
      type: 'Widget',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 8,
      property: 'title',
      description: S.current.checkboxesAPIDescription8,
      type: 'String',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 9,
      property: 'textStyle',
      description: S.current.checkboxesAPIDescription9,
      type: 'TextStyle',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  List<APITableModel> _getDataSourceCheckboxesForm() => [
    APITableModel(
      id: 1,
      property: 'name',
      description: S.current.checkboxesFormAPIDescription1,
      type: 'String',
      defaultValue: '""',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'title',
      description: S.current.checkboxesFormAPIDescription2,
      type: 'Widget',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'titleText',
      description: S.current.checkboxesFormAPIDescription3,
      type: 'String',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'titleTextStyle',
      description: S.current.checkboxesFormAPIDescription4,
      type: 'TextStyle',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'titleTextFontWeight',
      description: S.current.checkboxesFormAPIDescription5,
      type: 'FontWeight',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 6,
      property: 'titleTextColor',
      description: S.current.checkboxesFormAPIDescription6,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 7,
      property: 'contentPadding',
      description: S.current.checkboxesFormAPIDescription7,
      type: 'EdgeInsets',
      defaultValue: 'EdgeInsets.zero',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 8,
      property: 'type',
      description: S.current.checkboxesFormAPIDescription8,
      type: 'TekCheckBoxType',
      defaultValue: 'TekCheckBoxType.check',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 9,
      property: 'initValue',
      description: S.current.checkboxesFormAPIDescription9,
      type: 'bool',
      defaultValue: 'false',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 10,
      property: 'selected',
      description: S.current.checkboxesFormAPIDescription10,
      type: 'bool',
      defaultValue: 'false',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 11,
      property: 'onChanged',
      description: S.current.checkboxesFormAPIDescription11,
      type: 'ValueChanged<bool?>',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 12,
      property: 'activeColor',
      description: S.current.checkboxesFormAPIDescription12,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 13,
      property: 'checkColor',
      description: S.current.checkboxesFormAPIDescription13,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 14,
      property: 'valueTransformer',
      description: S.current.checkboxesFormAPIDescription14,
      type: 'ValueTransformer',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 15,
      property: 'enabled',
      description: S.current.checkboxesFormAPIDescription15,
      type: 'bool',
      defaultValue: 'true',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Checkboxes'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceCheckboxes(),
          ),
          TekVSpace.p18,
          const DocsTitleItemWidget(title: 'Checkboxes Form'),
          TekVSpace.p8,
          APITableWidget(
            widthOfPropertyColumn: 200,
            dataSources: _getDataSourceCheckboxesForm(),
          ),
        ],
      );
}
