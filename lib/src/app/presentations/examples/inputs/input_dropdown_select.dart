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

class InputDropdownSelectExampleWidget extends StatelessWidget {
  const InputDropdownSelectExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // TekInputDropdownSelect<DemoUserModel>(
          //   width: 400,
          //   hintText: 'Select User',
          //   filterOption: (searchValue, list) {
          //     return list
          //         .where((e) => e.value.name.toLowerCase().contains(searchValue.toLowerCase()))
          //         .toList();
          //   },
          //   menuChildren: _listDemoUserModel.map((e) {
          //     return TekInputDropdownItemModel<DemoUserModel>(
          //       keyValue: e.email,
          //       value: e,
          //       label: '${e.name}: ${e.email}',
          //     );
          //   }).toList(),
          //   onSelected: (item, list) {},
          // ),
        ],
      );
}
