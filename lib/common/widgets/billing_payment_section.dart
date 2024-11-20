import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class BillingPaymentSection extends StatelessWidget{
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Phương thức thanh toán',
          buttonTitle: 'thay đổi',
          onPressed: (){},
        ),
        SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.white,
              padding: EdgeInsets.all(Sizes.sm),
              child: Image(image: AssetImage(Images.paypal), fit: BoxFit.contain),
            ),
            SizedBox(width: Sizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.white,
              padding: EdgeInsets.all(Sizes.sm),
              child: Icon(Icons.money),
            ),
            SizedBox(width: Sizes.spaceBtwItems / 2),
            Text('Tiền mặt', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}