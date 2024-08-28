
import 'package:dalelapp/core/widgets/custom_botton.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/custom_nav_bar.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          children: [
           const SizedBox(height: 40,),
          const  CustomNavBar(),
            onBoarding(),
           const CustomBtn(text: 'Next',),
          
         const  SizedBox(height: 17,)
          ],
        ),
      )),
    );
  }
}

