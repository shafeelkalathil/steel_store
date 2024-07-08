import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/icons/circular_icon.dart';
import 'package:steel_store/common/widgets/texts/product_price_text.dart';
import 'package:steel_store/common/widgets/texts/product_title_text.dart';
import 'package:steel_store/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';
import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/size.dart';
import '../../custom_shape/container/rounded_container.dart';
import '../../images/t_rounded_images.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: isDarkMode ? TColors.darkGrey : TColors.softGrey
      ),
      child: Row(
        children: [
          ///Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            backgroundColor: isDarkMode ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                ///Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                    child: TRoundedImage(imageUrl: "https://lzd-img-global.slatic.net/g/p/74b4b1fd67cd038fc9e2a92cc7dcba1f.jpg_720x720q80.jpg_.webp",applyImageRadius: true,isNetWorkImage: true,)),

                ///Sales tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSize.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
                    child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),

                ///Favourite Icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,),
                )

              ],
            ),
          ),

          ///Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: "Green Noike Half Sleeve shirt",smallSize: true,),
                      SizedBox(height: TSize.spaceBtwItems /2,),
                      TBrandTitleWithVerifiedIcon(title: "Nike")
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///price
                      const Flexible(child: TProductPriceText(price: '145')),

                      ///add to cart
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
          )
        ],
      ),
    );
  }
}
