import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/appbar.dart';
import '../../../common/widgets/cart_item.dart';
import '../../../common/widgets/product_quantity_with_buttons.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(title: Text('Giỏ hàng',
          style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: Sizes.spaceBtwItems),
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              const CartItem(),
              const SizedBox(height: Sizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 70),
                  const ProductQuantityWithButtons(),
                  Text('650.000 đ', overflow: TextOverflow.ellipsis, maxLines: 1,
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => Checkout()),
          child: Text('Tổng thanh toán: 650.000đ'),
        )
      )
    );
  }
}