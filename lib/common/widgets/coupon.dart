import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark : AppColors.white,
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      child: Row(
        children: [
          //TextField
          Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Có mã giảm giá? Nhập vào đây',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none
                ),
              )
          ),

          //Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){},
              child: Text('Áp dụng'),
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? AppColors.white.withOpacity(0.5)
                    : AppColors.dark.withOpacity(0.5),
                backgroundColor: AppColors.grey.withOpacity(0.2),
                side: BorderSide(color: AppColors.grey.withOpacity(0.1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}