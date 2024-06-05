import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:steel_store/navigation_menu.dart';

import '../../../../../utils/constant/size.dart';
import '../../../../../utils/constant/text.dart';
import '../../signup/signup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:  const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputFields,),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputFields / 2,),

            ///Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) { },),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                ///Forget password
                TextButton(onPressed: () {
                  Get.to(() => const ForgetPassword());
                }, child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSize.spaceBtwSections,),

            ///sign n button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Get.to(()=>const NavigationMenu());
              }, child: const Text(TTexts.signIn)),
            ),
            const SizedBox(height: TSize.spaceBtwItems,),

            ///create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () {
                Get.to(() => const SignUpScreen());
              }, child: const Text(TTexts.createAccount)),
            ),


          ],
        ),
      ),
    );
  }
}
