import 'package:fashion_app/common/widgets/product_title_text.dart';
import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:fashion_app/common/widgets/rounded_image.dart';
import 'package:fashion_app/utils/constants/colors.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/shop/product_details/product_details.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
            width: 180,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.productItemRadius),
              color: dark ? AppColors.darkerGrey : AppColors.textSecondary,
            ),
            child: Column(
              children: [
                //Thumbnail
                RoundedContainer(
                  height: 180,
                  padding: const EdgeInsets.all(Sizes.sm),
                  backgroundColor: dark ? AppColors.dark : AppColors.light,
                  child: const Stack(
                    children: [
                      RoundedImage(imageUrl: Images.image1, applyImageRadius: true)
                    ],
                  ),
                ),
                const SizedBox(height: Sizes.spaceBtwItems / 2),
                //Details
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProductTitleText(title: 'Giày Thunder Bird Sport', smallSize: true),
                      const SizedBox(height: Sizes.spaceBtwItems / 2),
                      Row(
                        children: [
                          Text('', overflow: TextOverflow.ellipsis, maxLines: 1,
                              style: Theme.of(context).textTheme.labelMedium)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('650.000 đ', overflow: TextOverflow.ellipsis, maxLines: 1,
                              style: Theme.of(context).textTheme.headlineMedium),
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Sizes.cardRadiusMd),
                                bottomRight: Radius.circular(Sizes.productItemRadius)
                              ),
                            ),
                            child: const SizedBox(
                              width: Sizes.iconLg * 1.2,
                              height: Sizes.iconLg * 1.2,
                              child: Center(
                                child: Icon(Icons.add_circle, color: AppColors.buttonPrimary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}