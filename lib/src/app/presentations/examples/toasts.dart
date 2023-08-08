import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class ToastsExampleWidget extends StatelessWidget {
  const ToastsExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekButton(
            onPressed: () {
              TekToast.toast(
                msg: 'This is a toast message',
              );
            },
            text: 'Show Toast',
            type: TekButtonType.primary,
            
          ),
          TekVSpace.mainSpace,
          TekButton(
            onPressed: () {
              TekToast.success(
                msg: 'This is a toast message',
              );
            },
            text: 'Success Toast',
            type: TekButtonType.success,
            
          ),
          TekVSpace.mainSpace,
          TekButton(
            onPressed: () {
              TekToast.error(
                msg: 'This is a toast message',
              );
            },
            text: 'Danger Toast',
            type: TekButtonType.danger,
            
          ),
        ],
      );
}
