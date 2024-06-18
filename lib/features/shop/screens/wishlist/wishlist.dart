import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/common/widgets/layout/grid_layout.dart';
import 'package:steel_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:steel_store/utils/constant/size.dart';
import '../../../../common/widgets/icons/circular_icon.dart';
import '../home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("WishList",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
