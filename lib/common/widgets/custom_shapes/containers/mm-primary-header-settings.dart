import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';

class MMPrimaryHeaderSettings extends StatelessWidget {
  const MMPrimaryHeaderSettings({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MMCurvedEdgeWidget(
        child: Container(
            color: MMColors.primaryColor2,
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              child: Stack(
                children: [child],
              ),
            )));
  }
}
