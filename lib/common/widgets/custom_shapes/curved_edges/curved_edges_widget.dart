import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MMCurvedEdgeWidget extends StatelessWidget {
  const MMCurvedEdgeWidget({super.key, this.child});

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MMCustomCurvedEdges(),
      child: child,
    );
  }
}
