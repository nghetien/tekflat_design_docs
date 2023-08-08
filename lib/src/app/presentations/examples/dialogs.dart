import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DialogsExampleWidget extends StatelessWidget {
  const DialogsExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekButton(
            text: 'Show info dialog',
            onPressed: () {
              TekDialogs.optionDialog(
                context,
                type: TekDialogType.info,
                title: 'Title info dialog!',
                content: 'Content info dialog!',
                onClickButtonRight: () async {
                  context.popNavigator();
                  return false;
                },
              );
            },
            type: TekButtonType.info,
            
          ),
          TekVSpace.mainSpace,
          TekButton(
            text: 'Show warning dialog',
            onPressed: () {
              TekDialogs.optionDialog(
                context,
                type: TekDialogType.warning,
                title: 'Title warning dialog!',
                content: 'Content warning dialog!',
                onClickButtonRight: () async {
                  context.popNavigator();
                  return false;
                },
              );
            },
            type: TekButtonType.warning,
            
          ),
          TekVSpace.mainSpace,
          TekButton(
            text: 'Show delete dialog',
            onPressed: () {
              TekDialogs.optionDialog(
                context,
                type: TekDialogType.delete,
                title: 'Title delete dialog!',
                content: 'Content delete dialog!',
                onClickButtonRight: () async {
                  context.popNavigator();
                  return false;
                },
              );
            },
            type: TekButtonType.danger,
            
          ),
          TekVSpace.mainSpace,
          const TekLineDash(),
          TekVSpace.mainSpace,
          TekButton(
            text: 'Show customize dialog',
            onPressed: () {
              TekDialogs.customizeDialog(
                context,
                title: 'Title customize dialog!',
                content: TekCard(
                  width: double.infinity,
                  backgroundColor: context.theme.colorScheme.onBackground,
                  child: const Text('Content customize dialog!'),
                ),
                onOkPressed: () async {
                  context.popNavigator();
                  return false;
                },
              );
            },
            type: TekButtonType.primary,
            
          ),
          TekVSpace.mainSpace,
          const TekLineDash(),
          TekVSpace.mainSpace,
          TekButton(
            text: 'Show default dialog',
            onPressed: () {
              TekDialogs.defaultDialog(
                context,
                content: TekCard(
                  width: double.infinity,
                  backgroundColor: context.theme.colorScheme.onBackground,
                  child: const Text('Content default dialog!'),
                ),
              );
            },
            type: TekButtonType.primary,
            
          ),
        ],
      );
}
