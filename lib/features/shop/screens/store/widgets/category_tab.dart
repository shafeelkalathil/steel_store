import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/layout/grid_layout.dart';
import 'package:steel_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constant/size.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            ///brand
            const TBrandShowCase(images:
            [
              "https://images.unsplash.com/photo-1572635196237-14b3f281503f?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1560343090-f0409e92791a?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1546868871-7041f2a55e12?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],),
            const SizedBox(height: TSize.spaceBtwItems,),
            ///Products
            TSectionHeading(title: "You might like",onPressed: () {},),
            const SizedBox(height: TSize.spaceBtwItems,),

            TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical()),
            const SizedBox(height: TSize.spaceBtwSections,)
          ],
        ),
      )],
    );
  }
}
