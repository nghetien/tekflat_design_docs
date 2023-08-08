import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/basic_usage.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/expanded.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/filter_and_sort.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/fixed.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/loading_data.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/responsive.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/data_table/selection.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class DataTableExamplesWidget extends StatelessWidget {
  DataTableExamplesWidget({super.key});

  final _listPathFile = [
    'lib/src/app/presentations/examples/data_table/basic_usage.dart',
    'lib/src/app/presentations/examples/data_table/selection.dart',
    'lib/src/app/presentations/examples/data_table/filter_and_sort.dart',
    'lib/src/app/presentations/examples/data_table/expanded.dart',
    'lib/src/app/presentations/examples/data_table/fixed.dart',
    'lib/src/app/presentations/examples/data_table/responsive.dart',
    'lib/src/app/presentations/examples/data_table/loading_data.dart',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p8,
        ExampleBlockWidget(
          preview: const DataTableBasicUsageExampleWidget(),
          title: S.current.basicUsage,
          description: Text(S.current.datatableBasicUsage),
          pathFileExample: _listPathFile[0],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DatatableSelectionExampleWidget(),
          title: S.current.selection,
          description: Text(S.current.datatableSelection),
          pathFileExample: _listPathFile[1],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DataTableFilterAndSortExampleWidget(),
          title: S.current.filterAndSort,
          description: Text(S.current.datatableFilterAndSort),
          pathFileExample: _listPathFile[2],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DataTableExpandedExampleWidget(),
          title: S.current.expanded,
          description: Text(S.current.datatableExpanded),
          pathFileExample: _listPathFile[3],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DataTableFixedExampleWidget(),
          title: S.current.fixed,
          description: Text(S.current.datatableFixed),
          pathFileExample: _listPathFile[4],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DatatableResponsiveExampleWidget(),
          title: S.current.responsive,
          description: Text(S.current.datatableResponsive),
          pathFileExample: _listPathFile[5],
        ),
        TekVSpace.p18,
        ExampleBlockWidget(
          preview: const DatatableLoadingDataExampleWidget(),
          title: S.current.loadingData,
          description: Text(S.current.datatableLoadingData),
          pathFileExample: _listPathFile[6],
        ),
      ],
    );
  }
}
