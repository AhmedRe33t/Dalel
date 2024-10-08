import 'package:dalelapp/core/utils/app_colors.dart';
import 'package:dalelapp/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndecator extends StatelessWidget {
   CustomSmoothIndecator({super.key,required this.controller});
   final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(controller: controller, count: onBoardingData.length,
            effect: ExpandingDotsEffect(activeDotColor: AppColors.depBrown,
            dotHeight: 6,
            dotWidth: 25)
            ,);
  }
}