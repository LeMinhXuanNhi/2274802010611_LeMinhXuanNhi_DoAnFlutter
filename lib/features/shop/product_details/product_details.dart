import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:fashion_app/features/shop/product_details/product_attributes.dart';
import 'package:fashion_app/features/shop/product_details/product_meta_data.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/product_image.dart';
import '../../../utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

import '../screens/cart/cart.dart';
import '../screens/checkout/checkout.dart';
import 'bottom_add_to_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1. Product Image Slider
            ProductImage(dark: dark),

            //2. Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: Sizes.defaultSpace,
                left: Sizes.defaultSpace,
                bottom: Sizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ////Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 24),
                          const SizedBox(width: Sizes.spaceBtwItems),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '5.0',
                                    style: Theme.of(context).textTheme.bodyLarge)
                                ,
                                const TextSpan(text: '(199)'),
                              ]
                            )
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.share, size: Sizes.iconMd),
                      ),

                      ////Price, Title, Stock
                      const ProductMetaData(),

                      ////Attributes
                      const ProductAttributes(),

                      ////Checkout Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => Checkout()),
                            child: const Text('Thanh toán'),
                        ),
                      ),
                      const SizedBox(width: Sizes.spaceBtwItems),

                      ////Description
                      const SectionHeading(title: 'Mô tả', showActionButton: false),
                      const SizedBox(height: Sizes.spaceBtwItems),
                      const ReadMoreText(
                        'Sở hữu thiết kế hiện đại năng động cùng nhiều phiên bản màu sắc khác nhau, người dùng sẽ có rất nhiều lựa chọn cho những ngày tập luyện đầy hứng khởi. ',
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Hiển thị thêm',
                        trimExpandedText: 'Ít hơn',
                        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
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