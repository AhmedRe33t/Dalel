import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class onBoarding extends StatelessWidget {
   onBoarding({
    super.key,
  });
 final PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder:(context, index) {
        return Column(
          children: [
            Image.asset(Assets.imagesOnBoarding1),
        const SizedBox(height: 24,),
            CustomSmoothIndecator(controller:_controller),
           const SizedBox(height: 32,),
            Text("Explore The history with Dalel in a smart way",style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            const SizedBox(height: 16,),
        const    Text("Explore The history with Dalel in a smart way",style: CustomTextStyles.poppins300style16,
            textAlign: TextAlign.center)
            
          ],
        );
      },),
    );
  }
}
