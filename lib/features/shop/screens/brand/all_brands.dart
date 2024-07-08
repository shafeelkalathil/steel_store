import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/common/widgets/brands/brand_card.dart';
import 'package:steel_store/common/widgets/layout/grid_layout.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/features/shop/screens/brand/brand_products.dart';
import 'package:steel_store/utils/constant/size.dart';


class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Brand"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Heading
              const TSectionHeading(title: "Brands",showActionButton: false,),
              const SizedBox(height: TSize.spaceBtwItems,),

              ///Brands
              TGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (_, index) {
                return TBrandCard(showBorder: true,onTap: ()=>Get.to(()=> const BrandProducts()),);
              },)

            ],
          ),
        ),
      ),
    );
  }
}

