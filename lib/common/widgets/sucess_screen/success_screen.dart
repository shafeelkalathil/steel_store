import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:steel_store/common/styles/spacing_style.dart';
import 'package:steel_store/features/authentication/screens/login/login.dart';

import '../../../utils/constant/size.dart';
import '../../../utils/constant/text.dart';
import '../../../utils/helpers/helper_function.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight *2,
        child: Column(
          children: [
            ///image
            Image(image:  NetworkImage(image)
              ,width: THelperFunction.screenWidth() * 0.6,),
            const SizedBox(height: TSize.spaceBtwSections,),
            ///title & subtitle
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwSections,),
            ///button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onPressed, child: const Text("Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
