import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:steel_store/utils/constant/size.dart';

import '../../../../utils/constant/text.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         actions: [
           IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
         ],
       ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(image:  const NetworkImage("https://learn.canva.com/wp-content/uploads/2018/08/ComposeStunningImages16.jpg")
                ,width: THelperFunction.screenWidth() * 0.6,),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///title & subtitle
              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {

                }, child: const Text("Done")),
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {

                  },
                  child: const Text(TTexts.resendEmail)),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
