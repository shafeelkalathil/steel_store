import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/utils/constant/size.dart';

import '../../../../common/widgets/images/t_rounded_images.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Sports shirts"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: 'https://lzd-img-global.slatic.net/g/p/74b4b1fd67cd038fc9e2a92cc7dcba1f.jpg_720x720q80.jpg_.webp',
                applyImageRadius: true,
                isNetWorkImage: true,
              ),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Sub Category
              Column(
                children: [
                  TSectionHeading(title: "Sports shirts",onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(width: TSize.spaceBtwItems,),
                      itemBuilder: (context, index) =>const TProductCardHorizontal(),),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
