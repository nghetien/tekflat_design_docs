import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class AppLoadingExampleWidget extends StatelessWidget {
  const AppLoadingExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekButton(
            onPressed: () {
              TekLoading.appLoading.show();
              Future.delayed(const Duration(seconds: 2), () {
                TekLoading.appLoading.dismiss();
              });
            },
            text: 'Show App Loading 2s',
            type: TekButtonType.primary,
            
          ),
        ],
      );
}
