import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ImagesAPIsWidget extends StatelessWidget {
  const ImagesAPIsWidget({super.key});

  List<APITableModel> _getDataSourceAssetsImage() => [
    APITableModel(
      id: 1,
      property: 'size',
      description: S.current.assetsImageAPIDescription1,
      type: 'BasicImageSize',
      defaultValue: 'BasicImageSize.medium',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'path',
      description: S.current.assetsImageAPIDescription2,
      type: 'String',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'width',
      description: S.current.assetsImageAPIDescription3,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'height',
      description: S.current.assetsImageAPIDescription4,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'borderWidth',
      description: S.current.assetsImageAPIDescription5,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 6,
      property: 'borderColor',
      description: S.current.assetsImageAPIDescription6,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 7,
      property: 'shape',
      description: S.current.assetsImageAPIDescription7,
      type: 'BoxShape',
      defaultValue: 'BoxShape.rectangle',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 8,
      property: 'borderRadius',
      description: S.current.assetsImageAPIDescription8,
      type: 'BorderRadius',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 9,
      property: 'boxFit',
      description: S.current.assetsImageAPIDescription9,
      type: 'BoxFit',
      defaultValue: 'BoxFit.cover',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 10,
      property: 'imageProvider',
      description: S.current.assetsImageAPIDescription10,
      type: 'ImageProvider',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  List<APITableModel> _getDataSourceNetworkImage() => [
    APITableModel(
      id: 1,
      property: 'size',
      description: S.current.networkImageAPIDescription1,
      type: 'BasicImageSize',
      defaultValue: 'BasicImageSize.medium',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'path',
      description: S.current.networkImageAPIDescription2,
      type: 'String',
      defaultValue: 'required',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'width',
      description: S.current.networkImageAPIDescription3,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'height',
      description: S.current.networkImageAPIDescription4,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'borderWidth',
      description: S.current.networkImageAPIDescription5,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 6,
      property: 'borderColor',
      description: S.current.networkImageAPIDescription6,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 7,
      property: 'shape',
      description: S.current.networkImageAPIDescription7,
      type: 'BoxShape',
      defaultValue: 'BoxShape.rectangle',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 8,
      property: 'borderRadius',
      description: S.current.networkImageAPIDescription8,
      type: 'BorderRadius',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 9,
      property: 'boxFit',
      description: S.current.networkImageAPIDescription9,
      type: 'BoxFit',
      defaultValue: 'BoxFit.cover',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 10,
      property: 'assetPathWhenError',
      description: S.current.networkImageAPIDescription10,
      type: 'String',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 11,
      property: 'imageProviderWhenError',
      description: S.current.networkImageAPIDescription11,
      type: 'ImageProvider',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TekVSpace.p4,
      const DocsTitleItemWidget(title: 'Assets Image'),
      TekVSpace.p8,
      APITableWidget(
        dataSources: _getDataSourceAssetsImage(),
      ),
      TekVSpace.p18,
      const DocsTitleItemWidget(title: 'Network Image'),
      TekVSpace.p8,
      APITableWidget(
        widthOfPropertyColumn: 200,
        dataSources: _getDataSourceNetworkImage(),
      ),
    ],
  );
}
