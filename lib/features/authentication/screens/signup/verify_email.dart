import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:steel_store/features/authentication/screens/login/login.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../common/widgets/sucess_screen/success_screen.dart';
import '../../../../utils/constant/text.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            Get.offAll(()=>const LoginScreen());
          }, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            ///image
            Image(image: const NetworkImage("https://images.ctfassets.net/kftzwdyauwt9/MQfhRnDbcxc2gaHN0yKdP/fb7711a0bac4d739e415059e6d7e5a64/Anastronautridingahorseinaphotorealisticstyle6.jpg?w=3840&q=90&fm=webp",)
              ,width: THelperFunction.screenWidth() * 0.6,),
            const SizedBox(height: TSize.spaceBtwSections,),
            ///title & subtitle
            Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text("support@gmail.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwSections,),
            ///button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Get.to(()=> SuccessScreen(image: "https://images.ctfassets.net/kftzwdyauwt9/MQfhRnDbcxc2gaHN0yKdP/fb7711a0bac4d739e415059e6d7e5a64/Anastronautridingahorseinaphotorealisticstyle6.jpg?w=3840&q=90&fm=webp",
                title: TTexts.yourAccountCreatedTitle,
                subTitle: TTexts.yourAccountCreatedSubTitle,
                onPressed:()=> Get.to(()=> const LoginScreen()),));
              }, child: const Text("Continue")),
            ),
            const SizedBox(height: TSize.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: () {

              }, child: const Text(TTexts.resendEmail)),
            ),
          ],
        ),),
      ),
    );
  }
}
