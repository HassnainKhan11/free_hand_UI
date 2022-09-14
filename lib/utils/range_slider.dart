import 'package:flutter/material.dart';

import '../constants/constants.dart';

class RangeSliderWidget extends StatelessWidget {
  const RangeSliderWidget({
    Key? key,
    required this.rangeValues,
  }) : super(key: key);

  final RangeValues rangeValues;

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: rangeValues,
        min: 0,
        max: 1600,
        activeColor: AppColors.secondaryColor,
        divisions: 80,
        labels: RangeLabels(
          '${rangeValues.start.round()}' ' sqft',
          '${rangeValues.end.round()}' ' sqft',
        ),
        onChanged: (values) {
          // setState(() {
          //   rangeValues = values;
          // });
        });
  }
}
