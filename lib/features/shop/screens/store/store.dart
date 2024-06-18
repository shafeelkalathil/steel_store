import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/custom_shape/container/search_container.dart';
import 'package:steel_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/common/widgets/brands/brand_card.dart';
import 'package:steel_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/layout/grid_layout.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text("Store",style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: () {},)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: isDarkMode ? TColors.black : TColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children:  [
                      ///search bar
                      const SizedBox(height: TSize.spaceBtwItems,),
                      const TSearchContainer(text: "Search store",showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                      const SizedBox(height: TSize.spaceBtwItems,),

                      ///feature brands
                      TSectionHeading(title: "Feature Brands",showActionButton: true,onPressed: () {},),
                      const SizedBox(height: TSize.spaceBtwItems /1.5,),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) => const TBrandCard(showBorder: false,),
                      ),


                    ],
                  ),
                ),
                bottom:  const TTabBar(tabs: [
                  Tab(child: Text("Sports"),),
                  Tab(child: Text("Furniture"),),
                  Tab(child: Text("Electronics"),),
                  Tab(child: Text("Clothes"),),
                  Tab(child: Text("Cosmetics"),),
                ]),
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}






