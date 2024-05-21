import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_flutter/features/authentication/controllers.onbording/onboading.controller.dart';
import 'package:t_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store_flutter/utils/constants/image_strings.dart';
import 'package:t_store_flutter/utils/constants/sizes.dart';
import 'package:t_store_flutter/utils/constants/text_strings.dart';
import 'package:t_store_flutter/utils/device/device_utility.dart';
import 'package:t_store_flutter/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        // Horizontal Scroll pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicators,
          children: const [
            OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1),
            OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2),
            OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3)
          ],
        ),
        // Skip Button
        const OnBoardingSkip(),
        // Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),
        // Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}