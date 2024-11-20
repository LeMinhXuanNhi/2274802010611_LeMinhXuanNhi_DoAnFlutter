import 'package:fashion_app/common/widgets/product_title_text.dart';
import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/choice_chip.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Selected Attribute Pricing & Description
        RoundedContainer(
          padding: const EdgeInsets.all(Sizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SectionHeading(title: 'Mẫu khác: ', showActionButton: false),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  const ProductTitleText(title: 'Giá: ', smallSize: true),
                  Text('650.000 đ',
                      style: Theme.of(context).textTheme.titleSmall!.
                      apply(decoration: TextDecoration.lineThrough)),
                  Row(
                    children: [
                      const ProductTitleText(title: 'Tình trạng: ', smallSize: true),
                      Text('650.000 đ', style: Theme.of(context).textTheme.titleMedium)
                    ],
                  ),
                ],
              ),

              ProductTitleText(
                  title: 'Mô tả sản phẩm: Sản phẩm tuyệt vời với những tính năng xuất sắc.', 
                  smallSize: true, maxLines: 4
              ),
            ],
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Màu'),
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(text: 'Black', selected: true, onSelected: (value){}),
                AppChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
                AppChoiceChip(text: 'Red', selected: true, onSelected: (value){}),
                AppChoiceChip(text: 'White', selected: true, onSelected: (value){}),
                AppChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Size'),
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            AppChoiceChip(text: '38', selected: true, onSelected: (value){}),
            AppChoiceChip(text: '39', selected: true, onSelected: (value){}),
            AppChoiceChip(text: '40', selected: true, onSelected: (value){}),
            AppChoiceChip(text: '41', selected: true, onSelected: (value){}),
          ],
        ),
      ],
    );
  }
}