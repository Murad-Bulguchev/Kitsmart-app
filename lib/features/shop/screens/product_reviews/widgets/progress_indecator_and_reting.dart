import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/device/device_utility.dart';

class ProgressIndecatorAndReting extends StatelessWidget {
  const ProgressIndecatorAndReting(
      {super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: MMDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: MMColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor:
                    const AlwaysStoppedAnimation(MMColors.primaryColor2),
              ),
            ))
      ],
    );
  }
}
