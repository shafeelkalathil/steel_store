import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/brands/brand_card.dart';
import 'package:steel_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:steel_store/utils/constant/size.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text("Nike"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true,),
              SizedBox(height: TSize.spaceBtwSections,),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
