import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/common/widgets/images/circular_image.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:steel_store/utils/constant/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: "https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",isNetworkImage: true,),
                    TextButton(onPressed: (){}, child: const Text("Change profile picture"))
                  ],
                ),
              ),

              ///details
              const SizedBox(height: TSize.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems,),
              const TSectionHeading(title: "Profile Information",showActionButton: false,),
              const SizedBox(height: TSize.spaceBtwItems,),

              TProfileMenu(title: "Name",value: "Shafeel Kalathil",onTap: (){},),
              TProfileMenu(title: "Username",value: "shafeel_111",onTap: (){},),

              const SizedBox(height: TSize.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems,),

              const TSectionHeading(title: "Personal Information",showActionButton: false,),
              const SizedBox(height: TSize.spaceBtwItems,),

              TProfileMenu(title: "User ID",value: "45677",onTap: (){},),
              TProfileMenu(title: "E-Mail",value: "support@agmail.com",onTap: (){},),
              TProfileMenu(title: "Phone Number",value: "+91 9087654321",onTap: (){},),
              TProfileMenu(title: "Gender",value: "Male",onTap: (){},),
              TProfileMenu(title: "Date of Birth",value: "20-09-2001",onTap: (){},),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text("Close Account",style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


