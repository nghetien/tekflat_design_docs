import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class DemoDataTableModel {
  final int id;
  final String userName;
  final String age;
  final String address;
  final List<String> tags;

  const DemoDataTableModel({
    required this.id,
    required this.userName,
    required this.age,
    required this.address,
    required this.tags,
  });

  // to Json
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'userName': userName,
        'age': age,
        'address': address,
        'tags': tags,
      };
}

const String _userNameKey = 'USERNAME_KEY';
const String _ageKey = 'AGE_KEY';
const String _addressKey = 'ADDRESS_KEY';
const String _tagsKey = 'TAGS_KEY';
const String _actionsKey = 'ACTIONS_KEY';

List<DataTableColumn<DemoDataTableModel>> _columnsDemoDataTable = [
  DataTableColumn(
    key: _userNameKey,
    name: 'UserName',
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
        child: TekButtonGD(
          type: TekButtonGDType.text,
          onPressed: () {},
          text: rowData.userName,
          textColor: TekColors.blue,
        ),
      );
    },
  ),
  DataTableColumn(
    key: _ageKey,
    name: 'Age',
    width: 70,
    isShowSort: true,
    sortDataVoid: (
      keyColumn,
      typeSort,
      handleFilterData,
    ) {
      final List<DemoDataTableModel> cloneData = List.from(_dataSourcesDemoDataTable);
      if (typeSort == TekDataTableSortType.none) {
        handleFilterData(dataSources: cloneData);
        return;
      }
      cloneData.flutterSort((a, b) {
        if (typeSort == TekDataTableSortType.asc) {
          return a.address.compareTo(b.address);
        } else {
          return b.address.compareTo(a.address);
        }
      });
      handleFilterData(dataSources: cloneData);
    },
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
    minWidth: 230,
    isShowSort: true,
    isShowFilter: true,
    customizeFilter: TekFilterHeaderItem(
      heightPopup: 120,
      widthPopup: 300,
      child: (
        context,
        columnKey,
        columnName,
        enableFilter,
        isShowMenu,
        changeFilter,
        changeShowMenu,
        handleFilterData,
      ) {
        String address = '';
        return Padding(
          padding: EdgeInsets.all(TekSpacings().p8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TekInput(
                size: TekInputSize.medium,
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                ),
                onChanged: (value) => address = value ?? '',
              ),
              TekVSpace.mainSpace,
              Row(
                children: <Widget>[
                  Expanded(
                    child: TekButton(
                      onPressed: () {
                        changeFilter(false);
                        changeShowMenu(false);
                        handleFilterData(dataSources: _dataSourcesDemoDataTable);
                      },
                      text: 'Reset',
                      textColor: TekColors().primary,
                      type: TekButtonType.outline,
                      mainAxisSize: MainAxisSize.max,
                    ),
                  ),
                  TekHSpace.mainSpace,
                  Expanded(
                    child: TekButton(
                      onPressed: () {
                        changeFilter(true);
                        changeShowMenu(false);
                        handleFilterData(
                          dataSources: _dataSourcesDemoDataTable
                              .where((element) => element.address.contains(address))
                              .toList(),
                        );
                      },
                      text: 'Search',
                      type: TekButtonType.primary,
                      mainAxisSize: MainAxisSize.max,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    ),
    sortDataVoid: (
      keyColumn,
      typeSort,
      handleFilterData,
    ) {
      final List<DemoDataTableModel> cloneData = List.from(_dataSourcesDemoDataTable);
      if (typeSort == TekDataTableSortType.none) {
        handleFilterData(dataSources: cloneData);
        return;
      }
      cloneData.flutterSort((a, b) {
        if (typeSort == TekDataTableSortType.asc) {
          return a.address.compareTo(b.address);
        } else {
          return b.address.compareTo(a.address);
        }
      });
      handleFilterData(dataSources: cloneData);
    },
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
  DataTableColumn(
    key: _tagsKey,
    name: 'Tags',
    width: 200,
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: rowData.tags.map((tag) {
          return Padding(
            padding: EdgeInsets.only(right: TekSpacings().p8),
            child: (tag == 'nice' || tag == 'cool')
                ? TekTags.success(tag)
                : (tag == 'loser')
                    ? TekTags.failure(tag)
                    : TekTags.info(tag),
          );
        }).toList(),
      );
    },
  ),
  DataTableColumn(
    key: _actionsKey,
    name: 'Actions',
    minWidth: 200,
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
        children: <Widget>[
          TekButtonGD(
            type: TekButtonGDType.text,
            onPressed: () {},
            text: 'Invite John Brown',
            textColor: TekColors.blue,
          ),
          TekHSpace.mainSpace,
          TekButtonGD(
            type: TekButtonGDType.text,
            onPressed: () {},
            text: 'Delete',
            textColor: TekColors.blue,
          )
        ],
      );
    },
  ),
];

const List<DemoDataTableModel> _dataSourcesDemoDataTable = [
  DemoDataTableModel(
    id: 1,
    userName: 'John Brown',
    age: '32',
    address: 'New York No. 1 Lake Park',
    tags: <String>[
      'nice',
      'developer',
    ],
  ),
  DemoDataTableModel(
    id: 2,
    userName: 'Jim Green',
    age: '42',
    address: 'London No. 1 Lake Park',
    tags: <String>[
      'loser',
    ],
  ),
  DemoDataTableModel(
    id: 3,
    userName: 'Joe Black',
    age: '32',
    address: 'Sidney No. 1 Lake Park',
    tags: <String>[
      'cool',
      'teacher',
    ],
  ),
];

class DataTableFilterAndSortExampleWidget extends StatefulWidget {
  const DataTableFilterAndSortExampleWidget({super.key});

  @override
  State<DataTableFilterAndSortExampleWidget> createState() =>
      _DataTableFilterAndSortExampleWidgetState();
}

class _DataTableFilterAndSortExampleWidgetState extends State<DataTableFilterAndSortExampleWidget> {
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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekButton(
          type: TekButtonType.primary,
          onPressed: () {
            TekLogger.debugLog(_controller.dataSelected);
          },
          iconData: Icons.history,
          text: 'Log checked data',
        ),
        TekVSpace.mainSpace,
        TekDataTable<DemoDataTableModel>(
          tableColumns: _columnsDemoDataTable,
          controller: _controller,
          handleChangeData: _handleChangeData,
          additionColumns: const [
            TekDataTableAdditionColumn.numbered,
            TekDataTableAdditionColumn.checkbox,
          ],
          rowOption: const TekDataTableRowOption(
            bordered: true,
          ),
        ),
      ],
    );
  }
}
