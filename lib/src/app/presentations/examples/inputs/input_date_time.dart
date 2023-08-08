import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class InputDateTimeExampleWidget extends StatelessWidget {
  const InputDateTimeExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      const TekInputDateTime(
        width: 300,
        hintText: 'Select Date',
        
        type: TekInputDateTimeType.date,
      ),
      TekVSpace.mainSpace,
      const TekInputDateTime(
        width: 300,
        hintText: 'Select Time',
        
        type: TekInputDateTimeType.time,
      ),
      TekVSpace.mainSpace,
      const TekInputDateTime(
        width: 300,
        hintText: 'Select Date And Time',
        
        type: TekInputDateTimeType.dateTime,
      ),
    ],
  );
}
