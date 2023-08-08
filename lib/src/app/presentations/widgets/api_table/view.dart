import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

import 'model.dart';

class APITableWidget extends StatefulWidget {
  const APITableWidget({
    Key? key,
    required this.dataSources,
    this.widthOfPropertyColumn,
    this.widthOfTypeColumn,
    this.widthOfDefaultValueColumn,
  }) : super(key: key);

  final List<APITableModel> dataSources;
  final double? widthOfPropertyColumn;
  final double? widthOfTypeColumn;
  final double? widthOfDefaultValueColumn;

  @override
  State<APITableWidget> createState() => _APITableWidgetState();
}

class _APITableWidgetState extends State<APITableWidget> {
  final TekDataTableController<APITableModel> _controller = TekDataTableController<APITableModel>();

  static const String _propertyKey = 'PROPERTY';
  static const String _descriptionKey = 'DESCRIPTION';
  static const String _typeKey = 'TYPE';
  static const String _defaultValueKey = 'DEFAULT_VALUE';
  static const String _versionKey = 'VERSION';

  List<DataTableColumn<APITableModel>> _tableColumns() => [
        DataTableColumn(
          key: _propertyKey,
          name: S.current.property,
          width: widget.widthOfPropertyColumn,
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
              alignment: Alignment.centerLeft,
              child: Text(
                rowData.property,
                style: TekTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
              ),
            );
          },
        ),
        DataTableColumn(
          key: _descriptionKey,
          name: S.current.description,
          minWidth: 250,
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
              alignment: Alignment.centerLeft,
              child: Text(
                rowData.description,
                maxLines: 2,
              ),
            );
          },
        ),
        DataTableColumn(
          key: _typeKey,
          name: S.current.type,
          minWidth: 180,
          width: widget.widthOfTypeColumn,
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
              alignment: Alignment.centerLeft,
              child: Text(
                rowData.type,
                style: TekTextStyles.body.copyWith(
                  color: TekColors.pink,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
              ),
            );
          },
        ),
        DataTableColumn(
          key: _defaultValueKey,
          name: S.current.defaultValue,
          width: widget.widthOfDefaultValueColumn ?? 140,
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
              alignment: Alignment.centerLeft,
              child: rowData.defaultValue == 'required'
                  ? Text(
                      rowData.defaultValue,
                      style: TekTextStyles.body.copyWith(
                        color: TekColors.pink,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                    )
                  : rowData.defaultValue != 'null'
                      ? Text(
                          rowData.defaultValue,
                          style: TekTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 2,
                        )
                      : Text(
                          rowData.defaultValue,
                          maxLines: 2,
                        ),
            );
          },
        ),
        DataTableColumn(
          key: _versionKey,
          name: S.current.version,
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
              child: Text(
                rowData.version,
                maxLines: 2,
              ),
            );
          },
        ),
      ];

  @override
  void initState() {
    super.initState();
    _controller.initDataTableState(
      dataSources: widget.dataSources,
    );
  }

  @override
  void didUpdateWidget(covariant APITableWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.setDataSources(widget.dataSources);
  }

  @override
  Widget build(BuildContext context) => SelectionArea(
        child: TekDataTable<APITableModel>(
          tableColumns: _tableColumns(),
          controller: _controller,
          handleChangeData: ({
            required int currentPage,
            required int itemsPerPage,
          }) {},
          headerOption: TekDataTableHeaderOption(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: TekSpacings().mainSpacing,
            ),
          ),
          paginationOption: const TekDataTablePaginationOption(
            isShowPagination: false,
            enableItemPerPage: false,
          ),
          rowOption: TekDataTableRowOption(
            bordered: true,
            paddingOfRowItem: EdgeInsets.symmetric(
              horizontal: TekSpacings().mainSpacing,
              vertical: TekSpacings().p8,
            ),
          ),
        ),
      );
}
