import 'package:fashion_app/common/widgets/appbar.dart';
import 'package:fashion_app/common/widgets/cart_item.dart';
import 'package:fashion_app/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/billing_amount_section.dart';
import '../../../../common/widgets/billing_payment_section.dart';
import '../../../../common/widgets/coupon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Checkout extends StatelessWidget{
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Xem thanh toán', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              //Items in Cart
              CartItem(),
              SizedBox(height: Sizes.spaceBtwItems),

              //Coupon
              CouponCode(dark: dark),
              SizedBox(height: Sizes.spaceBtwItems),

              //Billing Section
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    //Pricing
                    BillingAmountSection(),
                    SizedBox(height: Sizes.spaceBtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: Sizes.spaceBtwItems),

                    //Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: Sizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => AlertDialog(
              content: const Text('Thanh toán thành công'),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: Text('OK'),
                  ),
                ]
              ),
            ),
            child: Text('Tổng thanh toán: 700.000đ'),
          )
      ),
    );
  }
}