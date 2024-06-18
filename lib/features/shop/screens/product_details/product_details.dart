import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:steel_store/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:steel_store/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:steel_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:steel_store/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../product_reviews/product_reviews.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product-image-slider
            const TProductImageSlider(),
            ///product-details
            Padding(
              padding: const EdgeInsets.only(right: TSize.defaultSpace,left: TSize.defaultSpace,bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  ///Rating&Share
                  const TRatingAndShare(),
                  ///Price , Title
                  const TProductMetaData(),
                  ///Attribute
                  const ProductAttributes(),
                  const SizedBox(height: TSize.spaceBtwSections,),
                  ///Checkout button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("CheckOut"))),
                  ///Description
                  const TSectionHeading(title: "Description",showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  const ReadMoreText(
                    'This is the product description for blue nike sleves vest.There are more things that can be added .Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: "Reviews(199)",showActionButton: false,),
                      IconButton(onPressed: ()=> Get.to(const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




