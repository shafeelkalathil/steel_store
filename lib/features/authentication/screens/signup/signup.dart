import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/login_signup/form_divider.dart';
import 'package:steel_store/common/widgets/login_signup/social_buttons.dart';
import 'package:steel_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:steel_store/utils/constant/size.dart';
import '../../../../utils/constant/text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(TTexts.signUpTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///form
               const TSignUpForm(),

              ///divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///Social buttons
              const TSocialButtons(),

          ],
        ),
        ),
      ),
    );
  }
}


