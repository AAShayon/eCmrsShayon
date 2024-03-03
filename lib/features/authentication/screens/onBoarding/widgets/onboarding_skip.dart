import'package:ecmrsdesignshayon/features/authentication/controllers/onboardig_controller.dart';
import 'package:ecmrsdesignshayon/utils/constant/sizes.dart';
import 'package:ecmrsdesignshayon/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: () =>OnBoardingController.instance.skipPage(), child: const Text("skip"))
    );
  }
}