import 'package:fashion_app/common/widgets/shimmer_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/personalization/controllers/user_controller.dart';
import '../../features/shop/screens/cart.dart';
import '../../utils/constants/colors.dart';
import 'appbar.dart';
import 'cart_counter_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Chào, ', style: Theme.of(context).
          textTheme.labelMedium!.apply(color: AppColors.grey)),
          Obx(() {if(controller.profileLoading.value) {
              return const ShimmerEffect(width: 80, height: 15,);
          } else {
            return Text(controller.user.value.fullName, style: Theme.of(context).
            textTheme.labelMedium!.apply(color: AppColors.white));
          }}),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () => Get.to(() => const CartScreen()), iconColor: AppColors.white)
      ],
    );
  }
}