import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class WrapLoadingExampleWidget extends StatefulWidget {
  const WrapLoadingExampleWidget({super.key});

  @override
  State<WrapLoadingExampleWidget> createState() => _WrapLoadingExampleWidgetState();
}

class _WrapLoadingExampleWidgetState extends State<WrapLoadingExampleWidget> {
  final TekLoadingController _loadingController = TekLoadingController();
  final List<String> _data = [];

  void _clearData() => setState(() => _data.clear());

  void _addData() =>
      setState(() => _data.addAll(List.generate(10, (index) => 'Item ${_data.length + index}')));

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              TekButton(
                onPressed: () {
                  _loadingController.show();
                  Future.delayed(const Duration(seconds: 2), () {
                    _addData();
                    _loadingController.dismiss();
                  });
                },
                text: 'Add 10 items',
                type: TekButtonType.primary,
                
              ),
              TekHSpace.mainSpace,
              TekButton(
                onPressed: _clearData,
                text: 'Clear',
                type: TekButtonType.danger,
                
              ),
            ],
          ),
          TekVSpace.mainSpace,
          SizedBox(
            width: 250,
            height: 250,
            child: _loadingController.initLoading(
              context,
              TekCard(
                backgroundColor: context.theme.colorScheme.onBackground,
                child: SingleChildScrollView(
                  child: Column(
                    children: _data.map((e) => Text(e)).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
