import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/features/authentication/screens/signup/verify_email.dart';
import 'package:steel_store/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import '../../../../../utils/constant/size.dart';
import '../../../../../utils/constant/text.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMood(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user)
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(width: TSize.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user)
                  ),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(height: TSize.spaceBtwInputFields,),
          ///username
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,prefixIcon: Icon(Iconsax.user_edit)
            ),
            expands: false,
          ),
          const SizedBox(height: TSize.spaceBtwInputFields,),
          ///email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct)
            ),

          ),
          const SizedBox(height: TSize.spaceBtwInputFields,),
          ///phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo,prefixIcon: Icon(Iconsax.call)
            ),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields,),
          ///password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          const SizedBox(height: TSize.spaceBtwSections,),
          ///Terms & condition checkbox
          const TTermsAndConditions(),
          const SizedBox(height: TSize.spaceBtwSections,),

          ///SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(()=> const VerifyEmailScreen());
              },
              child: const Text(TTexts.createAccount),
            ),

          )
        ],
      ),
    );
  }
}

