import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DemoDataTableModel {
  final int id;
  final String fullName;
  final String age;
  final List<String> columns;

  const DemoDataTableModel({
    required this.id,
    required this.fullName,
    required this.age,
    required this.columns,
  });

  // to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'fullName': fullName,
        'age': age,
        'columns': columns,
      };
}

const String _fullNameKey = 'FULL_NAME_KEY';
const String _ageKey = 'AGE_KEY';
const String _columnKey = 'COLUMN_KEY';
const String _actionKey = 'ACTION_KEY';

List<DataTableColumn<DemoDataTableModel>> _columnsDemoDataTable = [
  DataTableColumn(
    key: _fullNameKey,
    name: 'Full Name',
    fixedColumn: TekFixedColumn.left,
    width: 150,
    customizeItemWidget: (
      context,
      value,
      rowData,
      columnKey,
      columnName,
      width,
      showOnScreens,
    ) {
      return Align(
        alignment: Alignment.center,
        child: Text(
          rowData.fullName,
        ),
      );
    },
  ),
  DataTableColumn(
    key: _ageKey,
    name: 'Age',
    fixedColumn: TekFixedColumn.left,
    width: 70,
    customizeItemWidget: (
      context,
      value,
      rowData,
      columnKey,
      columnName,
      width,
      showOnScreens,
    ) {
      return Align(
        alignment: Alignment.center,
        child: Text(
          rowData.age,
        ),
      );
    },
  ),
  for (int index = 0; index < 9; index++)
    DataTableColumn(
      key: '${_columnKey}_$index',
      name: 'Column ${index + 1}',
      width: 150,
      customizeItemWidget: (
        context,
        value,
        rowData,
        columnKey,
        columnName,
        width,
        showOnScreens,
      ) {
        return Align(
          alignment: Alignment.center,
          child: Text(
            rowData.columns[index],
          ),
        );
      },
    ),
  DataTableColumn(
    key: _actionKey,
    name: 'Action',
    fixedColumn: TekFixedColumn.right,
    width: 80,
    customizeItemWidget: (
      context,
      value,
      rowData,
      columnKey,
      columnName,
      width,
      showOnScreens,
    ) {
      return Align(
        alignment: Alignment.center,
        child: TekButtonGD(
          type: TekButtonGDType.text,
          onPressed: () {},
          text: 'Action',
          textColor: TekColors.blue,
        ),
      );
    },
  ),
];

const List<DemoDataTableModel> _dataSourcesDemoDataTable = [
  DemoDataTableModel(
    id: 1,
    fullName: 'John Brown',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 2,
    fullName: 'Jim Green',
    age: '42',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 3,
    fullName: 'Joe Black',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 4,
    fullName: 'Keira White',
    age: '29',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 5,
    fullName: 'Elvia Delgado',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 6,
    fullName: 'John Brown',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 7,
    fullName: 'Jim Green',
    age: '42',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 8,
    fullName: 'Joe Black',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 9,
    fullName: 'Keira White',
    age: '29',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
  DemoDataTableModel(
    id: 10,
    fullName: 'Elvia Delgado',
    age: '32',
    columns: [
      'London Park no.1',
      'London Park no.2',
      'London Park no.3',
      'London Park no.4',
      'London Park no.5',
      'London Park no.6',
      'London Park no.7',
      'London Park no.8',
      'London Park no.9',
      'London Park no.10',
    ],
  ),
];

class DataTableFixedExampleWidget extends StatefulWidget {
  const DataTableFixedExampleWidget({super.key});

  @override
  State<DataTableFixedExampleWidget> createState() => _DataTableFixedExampleWidgetState();
}

class _DataTableFixedExampleWidgetState extends State<DataTableFixedExampleWidget> {
  final TekDataTableController<DemoDataTableModel> _controller =
      TekDataTableController<DemoDataTableModel>();

  @override
  void initState() {
    super.initState();
    _controller.initDataTableState(
      dataSources: _dataSourcesDemoDataTable,
    );
  }

  void _handleChangeData({
    required int currentPage,
    required int itemsPerPage,
  }) {
    TekLogger.debugLog({
      'currentPage': currentPage,
      'itemsPerPage': itemsPerPage,
    });
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 300,
        child: TekDataTable<DemoDataTableModel>(
          tableColumns: _columnsDemoDataTable,
          controller: _controller,
          handleChangeData: _handleChangeData,
          optionUI: const TekDataTableOptionUI(
            fixTableInAScreen: true,
          ),
          rowOption: const TekDataTableRowOption(
            bordered: true,
          ),
        ),
      );
}
