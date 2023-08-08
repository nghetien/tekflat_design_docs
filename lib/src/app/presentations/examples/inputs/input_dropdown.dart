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

class InputDropdownExampleWidget extends StatelessWidget {
  const InputDropdownExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => TekInputDropdown<DemoUserModel>(
        width: 350,
        hintText: 'Select User',
        prefixIcon: const Icon(Icons.person),
        menuChildren: _listDemoUserModel.map((e) {
          return TekInputDropdownItemModel<DemoUserModel>(
            keyValue: e.email,
            value: e,
            label: '${e.name}: ${e.email}',
          );
        }).toList(),
      );
}
