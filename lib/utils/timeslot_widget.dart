import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';

class TimeSlotWidget extends StatelessWidget {
  const TimeSlotWidget({
    Key? key,
    required this.selectedTag,
    required this.text,
  }) : super(key: key);

  final bool selectedTag;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        color: selectedTag
            ? AppColors.secondaryColor
            : const Color.fromARGB(255, 223, 223, 223),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: selectedTag
                  ? AppColors.primaryColor
                  : const Color.fromARGB(255, 109, 109, 109)),
        ),
      ),
    );
  }
}
