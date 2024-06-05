import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/styles/spacing_style.dart';
import 'package:steel_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:steel_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constant/size.dart';
import '../../../../utils/constant/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunction.isDarkMood(context);
    return  Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            ///logo , title , subtitle
            const TLoginHeader(),

            ///form
            const TLoginForm(),

            ///Divider
            TFormDivider(dividerText:TTexts.orSignInWith.capitalize! ),
            const SizedBox(height: TSize.spaceBtwSections,),

            ///footer
            const TSocialButtons()
          ],
        ),
      ),
    );
  }
}
