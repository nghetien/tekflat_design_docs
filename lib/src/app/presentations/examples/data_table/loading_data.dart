import 'dart:math';

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

final List<String> nameListDemo = [
  'Jerry Ward',
  'Cariana Sales',
  'Kenzo Gautier',
  'Arnoldo Toro',
  'Claudia Velasco',
  'Taahira Salian',
];

final List<String> genderListDemo = [
  'male',
  'female',
];

final List<String> emailListDemo = [
  'jerry.ward@example.com',
  'cariana.sales@example.com',
  'kenzo.gautier@example.com',
  'arnoldo.toro@example.com',
  'claudia.velasco@example.com',
  'taahira.salian@example.com',
];

List<DemoDataTableModel> getRandomDataSource(int number) {
  final List<DemoDataTableModel> result = [];
  for (int i = 0; i < number; i++) {
    final Random random = Random();

    final randomName = nameListDemo[random.nextInt(nameListDemo.length)];
    final randomGender = genderListDemo[random.nextInt(genderListDemo.length)];
    final randomEmail = emailListDemo[random.nextInt(emailListDemo.length)];

    result.add(DemoDataTableModel(
      id: i,
      userName: randomName,
      gender: randomGender,
      email: randomEmail,
    ));
  }
  return result;
}

class DatatableLoadingDataExampleWidget extends StatefulWidget {
  const DatatableLoadingDataExampleWidget({super.key});

  @override
  State<DatatableLoadingDataExampleWidget> createState() =>
      _DatatableLoadingDataExampleWidgetState();
}

class _DatatableLoadingDataExampleWidgetState extends State<DatatableLoadingDataExampleWidget> {
  final TekDataTableController<DemoDataTableModel> _controller =
      TekDataTableController<DemoDataTableModel>();

  @override
  void initState() {
    super.initState();
    _controller.initDataTableState(
      totalRecords: 100,
    );
  }

  void _handleChangeData({
    required int currentPage,
    required int itemsPerPage,
  }) async {
    TekLogger.debugLog({
      'currentPage': currentPage,
      'itemsPerPage': itemsPerPage,
    });
    _controller.setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    _controller.setDataSources(getRandomDataSource(itemsPerPage));
    _controller.setLoading(false);
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              TekButton(
                text: 'Get data',
                iconData: Icons.refresh_rounded,
                type: TekButtonType.outline,
                onPressed: () async {
                  _controller.setLoading(true);
                  await Future.delayed(const Duration(seconds: 1));
                  _controller.setDataSources(
                    getRandomDataSource(
                      _controller.pagination.itemsPerPage,
                    ),
                  );
                  _controller.setLoading(false);
                },
              ),
            ],
          ),
          TekVSpace.mainSpace,
          TekDataTable<DemoDataTableModel>(
            tableColumns: _columnsDemoDataTable,
            controller: _controller,
            handleChangeData: _handleChangeData,
            rowOption: const TekDataTableRowOption(
              bordered: true,
              paddingOfRowItem: EdgeInsets.all(8),
            ),
            paginationOption: TekDataTablePaginationOption(
              itemsPerPage: 3,
              numberNextPage: TekResponsiveConfig().screenDevice.isMobile ? 0 : 1,
              listItemsPerPage: [3, 6, 9],
            ),
          ),
        ],
      );
}
