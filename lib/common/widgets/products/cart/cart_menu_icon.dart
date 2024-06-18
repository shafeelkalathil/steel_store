import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/features/shop/screens/cart/cart.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../utils/constant/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, this.iconColor, required this.onPressed, this.counterBgColor, this.counterTextColor,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(()=> const CartScreen()), icon:  Icon(Iconsax.shopping_bag , color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: counterBgColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(
                  color:counterTextColor ?? (dark ? TColors.black : TColors.white),
                  fontSizeFactor: 0.8
              ),),
            ),
          ),
        )
      ],
    );
  }
}