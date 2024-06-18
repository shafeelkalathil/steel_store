import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:steel_store/common/widgets/sucess_screen/success_screen.dart';
import 'package:steel_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:steel_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:steel_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:steel_store/navigation_menu.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../cart/widgets/cart_items.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text("Order Review",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Items in crt
              const TCartItems(showAddRemoveButtons: false,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Coupon TextField
              const TCouponCode(),
              const SizedBox(height: TSize.spaceBtwSections,),
              
              ///Billing Section
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSize.md),
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSize.spaceBtwItems,),
                    ///Divider
                    Divider(),
                    SizedBox(height: TSize.spaceBtwItems,),
                    ///Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSize.spaceBtwItems,),
                    ///Address
                    TBillingAddressSection(),
                    SizedBox(height: TSize.spaceBtwItems,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=>SuccessScreen(
            image: "https://i.stack.imgur.com/YbIni.png",
            title: "Payment Success!",
            subTitle: "Your item will be shipped soon!",
            onPressed: ()=>Get.to(()=> const NavigationMenu())))
          ,child: const Text("CheckOut  \$256.0"),),
      ),
    );
  }
}


