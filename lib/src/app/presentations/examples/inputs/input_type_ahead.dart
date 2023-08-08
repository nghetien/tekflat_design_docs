import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DemoUserModel {
  final String name;
  final String email;

  const DemoUserModel({
    required this.name,
    required this.email,
  });
}

const List<DemoUserModel> _listDemoUserModel = [
  DemoUserModel(name: 'John Doe', email: 'johndoe@gmail.com'),
  DemoUserModel(name: 'Sheraphine', email: 'sheraphine@mail.com'),
  DemoUserModel(name: 'Join Snow', email: 'joinsnow@gmail.com'),
  DemoUserModel(name: 'Jin Kazama', email: 'jinkazama@gmail.com'),
];

class InputTypeAheadExampleWidget extends StatelessWidget {
  const InputTypeAheadExampleWidget({super.key});

  // List<TekInputTypeAheadDropdownItemModel<DemoUserModel>> _generateMenuChildren(List<DemoUserModel> list) {
  //   return list.map((e) {
  //     return TekInputTypeAheadDropdownItemModel<DemoUserModel>(
  //       keyValue: e.name,
  //       value: e,
  //       label: '${e.name}: ${e.email}',
  //     );
  //   }).toList();
  // }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          // TekInputTypeAhead<DemoUserModel>(
          //   width: 400,
          //   hintText: 'Select User',
          //   prefixIcon: const Icon(Icons.person),
          //   onSelected: (item, list){},
          //   initMenuChildren: () async {
          //     await Future.delayed(const Duration(seconds: 1));
          //     return _generateMenuChildren(_listDemoUserModel);
          //   },
          //   onLoadingMenuChildren: () async {
          //     await Future.delayed(const Duration(seconds: 1));
          //     return _generateMenuChildren(_listDemoUserModel);
          //   },
          //   onRefreshMenuChildren: () async {
          //     await Future.delayed(const Duration(seconds: 1));
          //     return _generateMenuChildren(_listDemoUserModel);
          //   },
          //   minHeightPopup: 200,
          // ),
        ],
      );
}
