import 'package:flutter/material.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../custom_shape/container/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/t_brand_title_with_verified_icon.dart';
import '../../../utils/constant/colors.dart';
import '../../../utils/constant/enum.dart';
import '../../../utils/constant/size.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.showBorder = true,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: TCircularImage(
                image: "https://static.vecteezy.com/system/resources/thumbnails/002/586/394/small/shirt-clothes-line-style-icon-free-vector.jpg",
                isNetworkImage: true,
                backgroundColor: Colors.transparent,
                overlayColor: isDarkMode ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems/2,),

            ///Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: "Nike", brandTextSize: TextSize.large,),
                  Text("256 Products",overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}