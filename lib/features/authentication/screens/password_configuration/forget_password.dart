import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:steel_store/utils/constant/size.dart';

import '../../../../utils/constant/text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///heading
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSize.spaceBtwSections * 2,),
            ///text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: TSize.spaceBtwSections),
            ///submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Get.off(() => const ResetPassword());
                }, child: const Text("Submit")))
          ],
        ),
      ),
    );
  }
}
