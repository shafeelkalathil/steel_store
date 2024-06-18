import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:steel_store/common/widgets/texts/product_price_text.dart';
import 'package:steel_store/common/widgets/texts/product_title_text.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Column(
      children: [
        ///selected attribute pricing & description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              ///title ,price and stock status
              Row(
                children: [
                  const TSectionHeading(title: "Variation", showActionButton: false,),
                  const SizedBox(width: TSize.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title:"Price : ",smallSize: true,),
                          ///actual price
                          Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSize.spaceBtwItems,),
                          ///sales price
                          const TProductPriceText(price: '20')

                        ],
                      ),
                      ///stock
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock : ",smallSize: true,),
                          Text("In stock",style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  ),

                ],
              ),
              ///variation description
              const TProductTitleText(title: "This is the description of the product and it can go upto max 4 lines",smallSize: true,maxLines: 4,)
            ],
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        ///Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors",showActionButton: false,),
            const SizedBox(height: TSize.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: "Green",selected: true,onSelected: (val){},),
                TChoiceChip(text: "Blue",selected: false,onSelected: (val){},),
                TChoiceChip(text: "Yellow",selected: false,onSelected: (val){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size",showActionButton: false,),
            const SizedBox(height: TSize.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: "EU 34",selected: true,onSelected: (val){},),
                TChoiceChip(text: "EU 36",selected: false,onSelected: (val){},),
                TChoiceChip(text: "EU 38",selected: false,onSelected: (val){},),
              ],
            )

          ],
        ),
      ],
    );
  }
}
