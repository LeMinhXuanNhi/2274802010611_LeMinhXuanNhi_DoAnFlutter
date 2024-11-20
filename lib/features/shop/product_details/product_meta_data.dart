import 'package:fashion_app/common/widgets/product_title_text.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price
        Row(
          children: [
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.
              apply(color: AppColors.black)),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            //Price
            Text('650.000 đ', style: Theme.of(context).textTheme.titleSmall!.
            apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: Sizes.spaceBtwItems / 1.5),
          ],
        ),

        //Title
        const ProductTitleText(title: 'Giày Thunder Bird Sport'),
        const SizedBox(width: Sizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Tình trạng: '),
            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: Sizes.spaceBtwItems / 1.5),
      ],
    );
  }
}