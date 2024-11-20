import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'circular_container.dart';
import 'curved_edge.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdge(),
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: child
      ),
    );
  }
}