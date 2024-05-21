import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index when page scroll
  void updatePageIndicators(index) => currentPageIndex.value = index;

  // Jump to specific dot selected
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index and Jump To NExt
  void nextPage() {
    if(currentPageIndex.value == 2){
      // Get.to(LoginScrren());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to last
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}