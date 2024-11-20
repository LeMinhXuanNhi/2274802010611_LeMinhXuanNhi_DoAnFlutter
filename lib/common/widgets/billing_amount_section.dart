import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:fashion_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class BillingAmountSection extends StatelessWidget{
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Giá: ', style: Theme.of(context).textTheme.bodyMedium),
            Text('650.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: Sizes.spaceBtwItems / 2),

        //Shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Ship: ', style: Theme.of(context).textTheme.bodyMedium),
            Text('25.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        //Tax
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thuế: ', style: Theme.of(context).textTheme.bodyMedium),
            Text('25.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        //Order
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng: ', style: Theme.of(context).textTheme.bodyMedium),
            Text('700.000 đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}