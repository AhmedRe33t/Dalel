import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({
    super.key,required this.controller, this.onPageChanged
  });

 final PageController controller;
 final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged:onPageChanged ,
        physics:const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder:(context, index) {
        return Column(
          children: [
           Container(
            height: 290,
            width: 343,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(onBoardingData[index].image),fit: BoxFit.fill),
              
            ),
            
           ),
        const SizedBox(height: 24,),
            CustomSmoothIndecator(controller:controller),
           const SizedBox(height: 32,),
            Text(onBoardingData[index].title,style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,

            textAlign: TextAlign.center),
            const SizedBox(height: 16,),
            Text(onBoardingData[index].subTitle,style: CustomTextStyles.poppins300style16,
            textAlign: TextAlign.center)
            
          ],
        );
      },),
    );
  }
}
