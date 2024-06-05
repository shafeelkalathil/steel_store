import 'package:flutter/material.dart';
import 'package:steel_store/features/authentication/controller/onboarding_controller/onboarding.dart';

import '../../../../../utils/constant/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtil.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () {
           OnBoardingController.instance.skipPage();
          },
          child: const Text("Skip"),
        ));
  }
}