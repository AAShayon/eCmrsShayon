import'package:ecmrsdesignshayon/features/authentication/controllers/onboardig_controller.dart';
import 'package:ecmrsdesignshayon/utils/constant/colors.dart';
import 'package:ecmrsdesignshayon/utils/constant/sizes.dart';
import 'package:ecmrsdesignshayon/utils/device/device_utility.dart';
import 'package:ecmrsdesignshayon/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () async =>OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark ? AppColors.primary : Colors.black),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}