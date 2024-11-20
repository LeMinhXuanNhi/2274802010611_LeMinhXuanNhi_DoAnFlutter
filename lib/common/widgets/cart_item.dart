import 'package:fashion_app/common/widgets/product_title_text.dart';
import 'package:fashion_app/common/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ////Image
        RoundedImage(
          imageUrl: Images.image1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),

        ////Title, Price, Size
        Column(
          children: [
            const Flexible(
                child: ProductTitleText(title: 'Giày Thunder Bird Sport', maxLines: 1)
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Màu', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Black', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '40', style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}