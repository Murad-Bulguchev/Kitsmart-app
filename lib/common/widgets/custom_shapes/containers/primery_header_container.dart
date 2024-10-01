import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class MMPrimaryHeaderContainer extends StatelessWidget {
  const MMPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MMCurvedEdgeWidget(
        child: Container(
            // color: MMColors.lightContainer,
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              height: 70,
              child: Stack(
                children: [
                  // Positioned(
                  //     top: -150,
                  //     right: 250,
                  //     child: MMCircularContainer(
                  //       backgroundColor: MMColors.textWhite.withOpacity(0.1),
                  //     )),
                  // Positioned(
                  //     top: 100,
                  //     right: -300,
                  //     child: MMCircularContainer(
                  //       backgroundColor: MMColors.textWhite.withOpacity(0.1),
                  //     )),
                  child
                  // Text('DWQLP[DWL]')
                ],
              ),
            )));
  }
}
