import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class DatatableWhenToUseWidget extends StatelessWidget {
  const DatatableWhenToUseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TekVSpace.p4,
        DocsTitleItemWidget(title: S.current.dataTableWhenToUse1),
        TekVSpace.p8,
        DocsTitleItemWidget(title: S.current.dataTableWhenToUse2),
      ],
    );
  }
}
