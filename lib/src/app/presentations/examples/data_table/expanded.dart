import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DemoDataTableModel {
  final int id;
  final String name;
  final String age;
  final String address;
  final String description;

  const DemoDataTableModel({
    required this.id,
    required this.name,
    required this.age,
    required this.address,
    required this.description,
  });

  // to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'age': age,
        'address': address,
        'description': description,
      };
}

const String _nameKey = 'NAME_KEY';
const String _ageKey = 'AGE_KEY';
const String _addressKey = 'ADDRESS_KEY';

List<DataTableColumn<DemoDataTableModel>> _columnsDemoDataTable = [
  DataTableColumn(
    key: _nameKey,
    name: 'Name',
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
          rowData.name,
        ),
      );
    },
  ),
  DataTableColumn(
    key: _ageKey,
    name: 'Age',
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
  DataTableColumn(
    key: _addressKey,
    name: 'Address',
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
          rowData.address,
        ),
      );
    },
  ),
];

const List<DemoDataTableModel> _dataSourcesDemoDataTable = [
  DemoDataTableModel(
    id: 1,
    name: 'John Brown',
    age: '32',
    address: 'New York No. 1 Lake Park',
    description: 'My name is John Brown, I am 32 years old, living in New York No. 1 Lake Park.',
  ),
  DemoDataTableModel(
    id: 2,
    name: 'Jim Green',
    age: '42',
    address: 'London No. 1 Lake Park',
    description: 'My name is Jim Green, I am 42 years old, living in London No. 1 Lake Park.',
  ),
  DemoDataTableModel(
    id: 3,
    name: 'Joe Black',
    age: '32',
    address: 'Sydney No. 1 Lake Park',
    description: 'My name is Joe Black, I am 32 years old, living in Sydney No. 1 Lake Park.',
  ),
];

class DataTableExpandedExampleWidget extends StatefulWidget {
  const DataTableExpandedExampleWidget({super.key});

  @override
  State<DataTableExpandedExampleWidget> createState() => _DataTableExpandedExampleWidgetState();
}

class _DataTableExpandedExampleWidgetState extends State<DataTableExpandedExampleWidget> {
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
  Widget build(BuildContext context) => TekDataTable<DemoDataTableModel>(
        tableColumns: _columnsDemoDataTable,
        controller: _controller,
        handleChangeData: _handleChangeData,
        headerOption: const TekDataTableHeaderOption(borderRadius: TekCorners.cornerRadius3),
        paginationOption: const TekDataTablePaginationOption(
          borderRadius: TekCorners.cornerRadius3,
        ),
        rowOption: TekDataTableRowOption(
          bordered: true,
          onPressRowItem: (rowItem) {
            TekLogger.debugLog(rowItem.toJson());
          },
        ),
        headerIntoRowWidget: (data, widthOfEachColumns) {
          return Padding(
            padding: EdgeInsets.all(TekSpacings().p8),
            child: Text(
              'Customize Header',
              style: TekTextStyles.label,
            ),
          );
        },
        showerMoreContentIntoRowWidget: (rowItem) {
          return Padding(
            padding: EdgeInsets.all(TekSpacings().p8),
            child: Text(
              rowItem.description,
            ),
          );
        },
        topContent: (dataSources, widthOfEachColumns) {
          return Padding(
            padding: EdgeInsets.all(TekSpacings().p8),
            child: Text(
              'Customize Top Content',
              style: TekTextStyles.titleLarge,
            ),
          );
        },
        bottomContent: (dataSources, widthOfEachColumns) {
          return Padding(
            padding: EdgeInsets.all(TekSpacings().p8),
            child: Text(
              'Customize Bottom Content',
              style: TekTextStyles.titleLarge,
            ),
          );
        },
      );
}
