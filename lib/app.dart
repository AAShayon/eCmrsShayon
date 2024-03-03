import 'package:ecmrsdesignshayon/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/theme/theme.dart';

///--Using This class to Setup Themes ,initial Bindings ,Animation --///

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lighttheme,
      darkTheme: SAppTheme.darkttheme,
      home: const OnBoardingScreen(),
    );
  }
}