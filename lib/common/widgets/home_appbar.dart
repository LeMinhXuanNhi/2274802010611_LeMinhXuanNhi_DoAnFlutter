import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'appbar.dart';
import 'cart_counter_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Chào, ', style: Theme.of(context).
          textTheme.labelMedium!.apply(color: AppColors.grey)),
          Text('Xuân Nhi', style: Theme.of(context).
          textTheme.labelMedium!.apply(color: AppColors.white)),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {}, iconColor: AppColors.white)
      ],
    );
  }
}