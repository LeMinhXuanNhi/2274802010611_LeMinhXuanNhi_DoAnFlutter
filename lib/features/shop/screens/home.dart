import 'package:fashion_app/common/widgets/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/grid_layout.dart';
import '../../../common/widgets/home_appbar.dart';
import '../../../common/widgets/primary_header_container.dart';
import '../../../common/widgets/search_container.dart';
import '../../../common/widgets/section_heading.dart';
import '../../../nav_menu.dart';
import '../../../utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key, String? email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [

                  //Appbar
                  HomeAppBar(),
                  SizedBox(width: Sizes.defaultSpace),

                  //Searchbar
                  SearchContainer(text: 'Tìm kiếm'),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  //Products
                  const SectionHeading(title: 'Danh sách sản phẩm'),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  GridLayout(itemCount: 2, itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}