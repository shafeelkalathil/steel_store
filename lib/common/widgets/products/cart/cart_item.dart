
import 'package:flutter/material.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/size.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Row(
      children: [
        ///Image
        TRoundedImage(
          imageUrl:"https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          width: 60,
          height: 60,
          isNetWorkImage: true,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        ///Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: "Canon"),
              const Flexible(child: TProductTitleText(title: "Canon 300 5D",maxLines: 1,)),
              ///Attribute
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodySmall),

                        TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodySmall),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}