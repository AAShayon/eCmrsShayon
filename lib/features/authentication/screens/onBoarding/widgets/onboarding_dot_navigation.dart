import'package:ecmrsdesignshayon/features/authentication/controllers/onboardig_controller.dart';
import 'package:ecmrsdesignshayon/utils/constant/colors.dart';
import 'package:ecmrsdesignshayon/utils/constant/sizes.dart';
import 'package:ecmrsdesignshayon/utils/device/device_utility.dart';
import 'package:ecmrsdesignshayon/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=AppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(controller:controller.pageController,
        count: 3,onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(activeDotColor:dark ? AppColors.light : AppColors.dark,dotHeight: 6 ),
      ),


    );
  }
}