import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/features/personalization/screens/address/address.dart';
import 'package:steel_store/features/personalization/screens/profile/profile.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';

import '../../../../common/widgets/listtile/settings_menu_tile.dart';
import '../../../../common/widgets/listtile/user_profile_tile.dart';
import '../../../shop/screens/order/order.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(
                  title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),
                ),
                const SizedBox(height: TSize.spaceBtwItems,),

                ///user proile
                TUserProfileTile(onTap: () => Get.to(const ProfileScreen()),),
                const SizedBox(height: TSize.spaceBtwSections,)
              ],
            )),

            ///body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: "Account Settings",showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),

                  TSettingMenuTile(icon: Iconsax.safe_home,title: "My Address",subTitle: "Set shopping delivery address",onTap: ()=> Get.to(()=> const UserAddressScreen())),
                  const TSettingMenuTile(icon: Iconsax.shopping_cart,title: "My Cart",subTitle: "Add, remove products and move to checkout",),
                  TSettingMenuTile(icon: Iconsax.bag_tick,title: "My Orders",subTitle: "In-progress and complete orders",onTap: ()=> Get.to(()=> const OrderScreen())),
                  const TSettingMenuTile(icon: Iconsax.bank,title: "Bank Account",subTitle: "Withdraw balance to registered bank account",),
                  const TSettingMenuTile(icon: Iconsax.discount_shape,title: "My Coupons",subTitle: "List of all the discounted coupons",),
                  const TSettingMenuTile(icon: Iconsax.notification,title: "Notifications",subTitle: "Set any kind of notification message",),
                  const TSettingMenuTile(icon: Iconsax.security_card,title: "Account Privacy",subTitle: "Manage data usage and connected accounts",),

                  ///app-settings
                  const SizedBox(height: TSize.spaceBtwSections,),
                  const TSectionHeading(title: "App Settings",showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  const TSettingMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data to your Cloud Firebase"),
                  TSettingMenuTile(icon: Iconsax.location, title: "Geolocation", subTitle: "Set recommendation based on location",trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.security_user, title: "Safe Mode", subTitle: "Search result is safe for all ages",trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.image, title: "HD Image Quality", subTitle: "Set image quality to be seen",trailing: Switch(value: true, onChanged: (value){}),),

                  ///logout-button
                  const SizedBox(height: TSize.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Logout"),),
                  ),
                  const SizedBox(height: TSize.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

