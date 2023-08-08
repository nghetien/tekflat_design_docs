import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class InputPasswordExampleWidget extends StatelessWidget {
  const InputPasswordExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: const <Widget>[
      TekInputPassword(
        width: 300,
        
        prefixIcon: Icon(Icons.lock),
        hintText: 'Enter password here',
      ),
    ],
  );
}
