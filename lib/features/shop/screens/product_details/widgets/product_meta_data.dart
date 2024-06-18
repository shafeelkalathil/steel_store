import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/texts/product_price_text.dart';
import 'package:steel_store/common/widgets/texts/product_title_text.dart';
import 'package:steel_store/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:steel_store/utils/constant/enum.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';
import '../../../../../common/widgets/custom_shape/container/rounded_container.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/size.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price
        Row(
          children: [
            ///Sales Tag
            TRoundedContainer(
              radius: TSize.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding:  const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
              child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSize.spaceBtwItems,),
            ///Price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSize.spaceBtwItems,),
            const TProductPriceText(price: "175",isLarge: true,)
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 1.5,),
        /// Title
        const TProductTitleText(title: "Green Nike aaaa",),
        const SizedBox(height: TSize.spaceBtwItems / 1.5,),
        /// Stock status
        Row(
          children: [
            const TProductTitleText(title: "Status",),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text("In Stock",style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 1.5,),
        /// Brand
        Row(
          children: [
            TCircularImage(
              width: 32,
              height: 32,
                overlayColor: dark ? TColors.white : TColors.black,
                image: "https://images.unsplash.com/photo-1598440947619-2c35fc9aa908?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                isNetworkImage: true),
            const TBrandTitleWithVerifiedIcon(title: "Nike",brandTextSize: TextSize.medium,),
          ],
        )
      ],
    );
  }
}
