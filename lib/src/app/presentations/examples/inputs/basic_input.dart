import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TekInputExampleWidget extends StatefulWidget {
  const TekInputExampleWidget({super.key});

  @override
  State<TekInputExampleWidget> createState() => _TekInputExampleWidgetState();
}

class _TekInputExampleWidgetState extends State<TekInputExampleWidget> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  final TextEditingController _textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekInput(
            width: 300,
            controller: _textEditingController1,
            hintText: 'Enter text here',
            
            prefixIcon: const Icon(Icons.search),
            suffixIcon: TekButtonGD(
              type: TekButtonGDType.icon,
              onPressed: () => _textEditingController1.clear(),
              iconData: Icons.clear,
            ),
          ),
          TekVSpace.mainSpace,
          TekInput(
            width: 300,
            controller: _textEditingController2,
            hintText: 'Enter only 0-9 here',
            
            prefixIcon: const Icon(Icons.search),
            suffixIcon: TekButtonGD(
              type: TekButtonGDType.icon,
              onPressed: () => _textEditingController2.clear(),
              iconData: Icons.clear,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          TekVSpace.mainSpace,
          TekInput(
            width: 300,
            controller: _textEditingController3,
            hintText: 'Enter only phone here',
            
            prefixIcon: const Icon(Icons.phone_rounded),
            suffixIcon: TekButtonGD(
              type: TekButtonGDType.icon,
              onPressed: () => _textEditingController3.clear(),
              iconData: Icons.clear,
            ),
            inputFormatters: [
              TekPhoneFormatter.phoneInputFormatter
            ],
          ),
          TekVSpace.mainSpace,
          TekInput(
            width: 300,
            hintText: 'Disable',
            enabled: false,
            
            prefixIcon: const Icon(Icons.phone_rounded),
            suffixIcon: TekButtonGD(
              type: TekButtonGDType.icon,
              onPressed: () {},
              iconData: Icons.clear,
            ),
          ),
          TekVSpace.mainSpace,
          const TekInput(
            width: 300,
            hintText: 'Area',
            size: TekInputSize.areaMedium,
          ),
        ],
      );
}
