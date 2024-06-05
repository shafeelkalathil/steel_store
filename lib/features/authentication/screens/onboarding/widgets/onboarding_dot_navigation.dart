
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:steel_store/features/authentication/controller/onboarding_controller/onboarding.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/size.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= OnBoardingController.instance;
    final dark=THelperFunction.isDarkMood(context);
    return Positioned(
        bottom: TDeviceUtil.getBottomNavigationBarHeight() + 25,
        left: TSize.defaultSpace,
        child: SmoothPageIndicator(
            controller : controller.pageController, count:3,
            onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(activeDotColor :dark ? TColors.light : TColors.dark,dotHeight:6)
        ));
  }
}