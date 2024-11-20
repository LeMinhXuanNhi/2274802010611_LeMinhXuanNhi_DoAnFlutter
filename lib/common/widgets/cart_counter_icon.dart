import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key, required this.onPressed, required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Icons.shopping_cart,
            color: iconColor)),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Text('2', style: Theme.of(context).textTheme.
                labelMedium!.apply(color: AppColors.white, fontSizeFactor: 0.8)),
              ),
            )
        )
      ],
    );
  }
}