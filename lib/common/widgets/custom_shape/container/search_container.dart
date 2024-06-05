import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;


  @override
  Widget build(BuildContext context) {
    final  darkMode=THelperFunction.isDarkMood(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
      child: Container(
        width: TDeviceUtil.getScreenWidth(context),
        padding: const EdgeInsets.all(TSize.md),
        decoration: BoxDecoration(
            color: showBackground ? darkMode ? TColors.dark : TColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null
        ),
        child: Row(
          children: [
            Icon(icon , color: TColors.darkerGrey,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}