import 'package:ecmrsdesignshayon/utils/constant/image_strings.dart';
import 'package:ecmrsdesignshayon/utils/constant/sizes.dart';
import 'package:ecmrsdesignshayon/utils/constant/text_strings.dart';
import 'package:ecmrsdesignshayon/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? AppImages.lightApplogo : AppImages.darkApplogo),
        ),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}