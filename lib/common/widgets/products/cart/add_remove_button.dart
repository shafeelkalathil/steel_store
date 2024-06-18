
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/size.dart';
import '../../icons/circular_icon.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
          color: dark ? TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text("2",style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSize.spaceBtwItems,),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}