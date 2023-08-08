import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class DemoDataTableModel {
  final int id;
  final String userName;
  final String gender;
  final String email;

  const DemoDataTableModel({
    required this.id,
    required this.userName,
    required this.gender,
    required this.email,
  });

  // to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'userName': userName,
        'gender': gender,
        'email': email,
      };
}

const String _userNameKey = 'USERNAME_KEY';
const String _genderKey = 'GENDER_KEY';
const String _emailKey = 'EMAIL_KEY';
const String _actionKey = 'ACTION_KEY';

List<DataTableColumn<DemoDataTableModel>> _columnsDemoDataTable = [
  DataTableColumn(
    key: _userNameKey,
    name: 'UserName',
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
          rowData.userName,
        ),
      );
    },
  ),
  DataTableColumn(
    key: _genderKey,
    name: 'Gender',
    width: 100,
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
        child: rowData.gender == 'male'
            ? TekTags.success(
                'Male',
                isOutlined: true,
              )
            : TekTags.failure(
                'Female',
                isOutlined: true,
              ),
      );
    },
  ),
  DataTableColumn(
    key: _emailKey,
    name: 'Email',
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
          rowData.email,
        ),
      );
    },
  ),
  DataTableColumn(
    key: _actionKey,
    name: 'Action',
    width: 120,
    customizeItemWidget: (
      context,
      value,
      rowData,
      columnKey,
      columnName,
      width,
      showOnScreens,
    ) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TekLink(
            text: 'Edit',
            onPressed: () {},
            size: TekLinkSize.medium,
          ),
          TekHSpace.mainSpace,
          TekLink(
            text: 'Delete',
            onPressed: () {},
            size: TekLinkSize.medium,
          ),
        ],
      );
    },
  ),
];

const List<DemoDataTableModel> _dataSourcesDemoDataTable = [
  DemoDataTableModel(
    id: 1,
    userName: 'Jerry Ward',
    gender: 'male',
    email: 'jerry.ward@example.com',
  ),
  DemoDataTableModel(
    id: 2,
    userName: 'Cariana Sales',
    gender: 'female',
    email: 'cariana.sales@example.com',
  ),
  DemoDataTableModel(
    id: 3,
    userName: 'Kenzo Gautier',
    gender: 'male',
    email: 'kenzo.gautier@example.com',
  ),
  DemoDataTableModel(
    id: 4,
    userName: 'Arnoldo Toro',
    gender: 'male',
    email: 'arnoldo.toro@example.com',
  ),
  DemoDataTableModel(
    id: 5,
    userName: 'Claudia Velasco',
    gender: 'female',
    email: 'claudia.velasco@example.com',
  ),
  DemoDataTableModel(
    id: 6,
    userName: 'Taahira Salian',
    gender: 'male',
    email: 'taahira.salian@example.com',
  ),
  DemoDataTableModel(
    id: 7,
    userName: 'Sophie Lévesque',
    gender: 'female',
    email: 'sophie.levesque@example.com',
  ),
  DemoDataTableModel(
    id: 8,
    userName: 'Angela Gómez',
    gender: 'female',
    email: 'angela.gomez@example.com',
  ),
];

class DatatableSelectionExampleWidget extends StatefulWidget {
  const DatatableSelectionExampleWidget({super.key});

  @override
  State<DatatableSelectionExampleWidget> createState() => _DatatableSelectionExampleWidgetState();
}

class _DatatableSelectionExampleWidgetState extends State<DatatableSelectionExampleWidget> {
  final TekDataTableController<DemoDataTableModel> _controller =
      TekDataTableController<DemoDataTableModel>();

  List<TekDataTableAdditionColumn> _additionColumns = [
    TekDataTableAdditionColumn.checkbox,
  ];

  void _setAdditionColumns(List<TekDataTableAdditionColumn> value) =>
      setState(() => _additionColumns = value);

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
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TekCheckBox(
                value: _additionColumns.contains(TekDataTableAdditionColumn.checkbox),
                title: 'Checkbox',
                onChanged: (value) {
                  if (value == true) {
                    _setAdditionColumns([..._additionColumns, TekDataTableAdditionColumn.checkbox]);
                  } else {
                    _setAdditionColumns(_additionColumns
                        .where((element) => element != TekDataTableAdditionColumn.checkbox)
                        .toList());
                  }
                },
              ),
              TekHSpace.mainSpace,
              TekCheckBox(
                value: _additionColumns.contains(TekDataTableAdditionColumn.numbered),
                title: 'Numbered',
                onChanged: (value) {
                  if (value == true) {
                    _setAdditionColumns([..._additionColumns, TekDataTableAdditionColumn.numbered]);
                  } else {
                    _setAdditionColumns(_additionColumns
                        .where((element) => element != TekDataTableAdditionColumn.numbered)
                        .toList());
                  }
                },
              ),
            ],
          ),
          TekVSpace.mainSpace,
          TekDataTable<DemoDataTableModel>(
            tableColumns: _columnsDemoDataTable,
            controller: _controller,
            handleChangeData: _handleChangeData,
            additionColumns: _additionColumns,
            rowOption: const TekDataTableRowOption(
              bordered: true,
              paddingOfRowItem: EdgeInsets.all(8),
            ),
          ),
        ],
      );
}
