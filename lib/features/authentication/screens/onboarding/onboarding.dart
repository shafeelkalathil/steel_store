import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:steel_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:steel_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:steel_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '../../../../utils/constant/text.dart';
import '../../controller/onboarding_controller/onboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,),
            ],
          ),

          ///Skip button
          const OnBoardingSkip(),

          ///Dot Navigation smooth indicator
          const OnBoardingDotNavigation(),

          ///Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}









