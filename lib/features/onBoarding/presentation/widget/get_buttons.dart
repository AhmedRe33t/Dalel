
import 'package:dalelapp/core/function/navigation.dart';
import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/core/widgets/custom_botton.dart';
import 'package:dalelapp/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
   final int currentIndex;
   final PageController controller;
  @override
  Widget build(BuildContext context) {
      if(currentIndex==onBoardingData.length-1){
        return 
        Column(
        children: [
          CustomBtn(text: AppStrings.createAccount,onPressed: () {
            custemReplacementNvigator(context,'/signUp');
          },),
        const  SizedBox(height: 16,),
         GestureDetector(
          onTap: () {
            custemReplacementNvigator(context, '/signIn');
          },
          child: const Text(AppStrings.loginNow,style: CustomTextStyles.poppins300style16,))
        ],
      );
      }else {
        return CustomBtn(text: 'Next',
           onPressed: () {

             controller.nextPage(duration:const Duration(milliseconds: 200), curve: Curves.bounceIn);
           },
           );
      }
  }
}


