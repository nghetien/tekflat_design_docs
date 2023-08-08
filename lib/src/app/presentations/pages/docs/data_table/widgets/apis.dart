import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class DataTableAPIsWidget extends StatelessWidget {
  const DataTableAPIsWidget({super.key});

  List<APITableModel> _getDataSourceDataTable() => [
        APITableModel(
          id: 1,
          property: 'controller',
          description: S.current.dataTableAPIDescription1,
          type: 'TekDataTableController',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'tableColumns',
          description: S.current.dataTableAPIDescription2,
          type: 'List<DataTableColumn>',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'additionColumns',
          description: S.current.dataTableAPIDescription3,
          type: 'List<TekDataTableAdditionColumn>',
          defaultValue: '[]',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 4,
          property: 'topContent',
          description: S.current.dataTableAPIDescription4,
          type: 'OptionContentTable',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 5,
          property: 'bottomContent',
          description: S.current.dataTableAPIDescription5,
          type: 'OptionContentTable',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 6,
          property: 'showerMoreContentIntoRowWidget',
          description: S.current.dataTableAPIDescription6,
          type: 'ShowerMoreContentIntoRowWidget',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 7,
          property: 'headerIntoRowWidget',
          description: S.current.dataTableAPIDescription7,
          type: 'HeaderIntoRowWidget',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 8,
          property: 'handleChangeData',
          description: S.current.dataTableAPIDescription8,
          type: 'AsyncDataSource',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 9,
          property: 'optionUI',
          description: S.current.dataTableAPIDescription9,
          type: 'TekDataTableOptionUI',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 10,
          property: 'headerOption',
          description: S.current.dataTableAPIDescription10,
          type: 'TekDataTableHeaderOption',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 11,
          property: 'rowOption',
          description: S.current.dataTableAPIDescription11,
          type: 'TekDataTableRowOption',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 12,
          property: 'columnOption',
          description: S.current.dataTableAPIDescription12,
          type: 'DataTableColumnOption',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 13,
          property: 'paginationOption',
          description: S.current.dataTableAPIDescription11,
          type: 'TekDataTablePaginationOption',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 14,
          property: 'checkBoxOption',
          description: S.current.dataTableAPIDescription12,
          type: 'DataTableCheckBoxOption',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p4,
        const DocsTitleItemWidget(title: 'Tek Data Table'),
        TekVSpace.p8,
        APITableWidget(dataSources: _getDataSourceDataTable()),
      ],
    );
  }
}
