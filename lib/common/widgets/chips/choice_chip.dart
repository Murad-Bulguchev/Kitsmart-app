import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';

class MMChoiceChip extends StatelessWidget {
  const MMChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MMHelperFunctions.getColor(text) != null;
    return Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent), child: ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? MMColors.textWhite : null),
      avatar: MMHelperFunctions.getColor(text) != null
          ? MMCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: MMHelperFunctions.getColor(text)!)
          : null,
      labelPadding:
          MMHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null, // Make icon in the center
      padding:
          MMHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
      shape: MMHelperFunctions.getColor(text) != null ? const CircleBorder() : null,
      backgroundColor: MMHelperFunctions.getColor(text) != null
          ? MMHelperFunctions.getColor(text)!
          : null,
    ));// ChoiceChip
  }
}