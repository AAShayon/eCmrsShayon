import'package:ecmrsdesignshayon/common/styles/spacing_styles.dart';
import 'package:ecmrsdesignshayon/common/styles/widgets.login_signup/form_divider.dart';
import 'package:ecmrsdesignshayon/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:ecmrsdesignshayon/features/authentication/screens/login/widgets/login_Header.dart';
import 'package:ecmrsdesignshayon/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecmrsdesignshayon/utils/constant/sizes.dart';
import 'package:ecmrsdesignshayon/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SSpacingStyle.paddingwithAppBarHeight,
        child: Column(
          children: [
            ///----headings
            ///logo ,Title,Sub title
          const  SLoginHeader(),
            ///--form
          const  SLoginForm(),

            ///ADDing Divider

            SFormDivider(dividerText: AppTexts.orSignInWith.capitalize! ),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            ///Footer
            const SSocialButtons(),
          ],
        ),
      ),
    );
  }
}

////https://www.udemy.com/course/master-flutter-dart-oop-state-management-project-based/








