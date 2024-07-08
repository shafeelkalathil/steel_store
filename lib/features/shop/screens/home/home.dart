
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/layout/grid_layout.dart';
import 'package:steel_store/features/shop/screens/all_products/all_products.dart';
import 'package:steel_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:steel_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:steel_store/utils/constant/size.dart';
import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/container/search_container.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSize.spaceBtwSections,),
                  ///Searchbar
                  const TSearchContainer(text: "Search in Store",),
                  const SizedBox(height: TSize.spaceBtwSections,),
                  ///Categories
                  Padding(padding: const EdgeInsets.only(
                    left: TSize.defaultSpace,
                  ),
                  child: Column(
                    children: [
                      ///Heading
                      const TSectionHeading(
                        title: "Popular Categories",
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      const SizedBox(height: TSize.spaceBtwItems,),
                      ///Categories
                      SizedBox(
                        height:80 ,
                        child: ListView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const TVerticalImageText();
                          },
                        ),
                      )
                    ],
                  ),)
                ],
              ),
            ),
            ///Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child:  Column(
                children: [
                  ///promo slider
                  const TPromoSlider(banners: [
                    "https://img.freepik.com/free-vector/sales-promo-with-abstract-shapes_79603-1400.jpg",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT36wq5T8OpVCqmotIgZYj3l3YqUinXd18NBA&s",
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/new-arrival-shoes-sale-design-template-335b726ae54f0595018bfa54469a6cee_screen.jpg?ts=1598453400",
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/new-arrival-shoes-sales-social-media-template-design-6114297f9612c2ad52c3e0c1571e09e7_screen.jpg?ts=1649521712"
                  ],),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///Heading
                  TSectionHeading(title: "Popular Products",onPressed: ()=> Get.to(()=> const AllProducts())),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  /// popular products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),)

                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}