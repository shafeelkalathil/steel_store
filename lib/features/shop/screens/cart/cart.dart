import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:steel_store/features/shop/screens/checkout/checkout.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text("Cart",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=>const CheckOutScreen()),child: const Text("CheckOut  \$256.0"),),
      ),
    );
  }
}




