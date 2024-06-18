import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/images/t_rounded_images.dart';
import 'package:steel_store/features/shop/screens/product_details/product_details.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../utils/constant/colors.dart';
import '../../../styles/shadow_style.dart';
import '../../custom_shape/container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return GestureDetector(
      onTap: () => Get.to(const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: isDarkMode ? TColors.darkGrey : TColors.white
        ),
        child: Column(
          children: [
            /// thumbnail
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: isDarkMode ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  ///image
                  const TRoundedImage(imageUrl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                    isNetWorkImage: true,
                    applyImageRadius: true,
                  ),

                  ///sales-tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    ),
                  ),

                  ///favourite
                  const Positioned(
                      right: 0,
                      top: 0,
                      child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems /2,),
            /// details
             const Padding(
              padding: EdgeInsets.only(left: TSize.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: "Green Nike Glass",smallSize: true,),
                SizedBox(height: TSize.spaceBtwItems /2,),
                TBrandTitleWithVerifiedIcon(title: "Nike",),

              ],
            ),
            ),

             const Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: TSize.sm),
                  child: TProductPriceText(price: '35.5',isLarge: true),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSize.cardRadiusMd),
                          bottomRight: Radius.circular(TSize.productImageRadius)
                      )
                  ),
                  child: const SizedBox(
                      width: TSize.iconLg * 1.2,
                      height: TSize.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




