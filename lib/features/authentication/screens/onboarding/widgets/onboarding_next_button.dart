import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/features/authentication/controller/onboarding_controller/onboarding.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../../utils/constant/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMood(context);
    return Positioned(
        right: TSize.defaultSpace,
        bottom: TDeviceUtil.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {
             OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark ? TColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}