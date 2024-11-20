import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import 'curved_edge_widget.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: const Stack(
          children: [
            //Main Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Sizes.productItemRadius * 2),
                child: Center(child: Image(image: AssetImage(Images.image1))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}