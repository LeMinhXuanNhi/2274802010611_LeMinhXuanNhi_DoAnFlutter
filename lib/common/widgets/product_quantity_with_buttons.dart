import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import 'circular_icon.dart';

class ProductQuantityWithButtons extends StatelessWidget {
  const ProductQuantityWithButtons({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 70),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularIcon(
              icon: Icons.remove,
              width: 32,
              height: 32,
              size: Sizes.md,
              color: HelperFunctions.isDarkMode(context)
                  ? AppColors.white : AppColors.black,
              backgroundColor: HelperFunctions.isDarkMode(context)
                  ? AppColors.white : AppColors.black,
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: Sizes.spaceBtwItems),
            const CircularIcon(
              icon: Icons.add,
              width: 32,
              height: 32,
              size: Sizes.md,
              color: AppColors.white,
              backgroundColor: AppColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}