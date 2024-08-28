
import 'package:dalelapp/core/function/navigation.dart';
import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/core/widgets/custom_botton.dart';
import 'package:dalelapp/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/custom_nav_bar.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/get_buttons.dart';
import 'package:dalelapp/features/onBoarding/presentation/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
   final PageController controller=PageController(initialPage: 0);
    int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: ListView(
          shrinkWrap: true,
          physics:const BouncingScrollPhysics(),
          children: [
           const SizedBox(height: 40,),
            CustomNavBar(onTap: () {
            custemReplacementNvigator(context,'/signUp');
          },),
            onBoarding(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex=index;
                });
                
              },
              ),
                     const  SizedBox(height: 88,),
      
          GetButtons(currentIndex: currentIndex, controller: controller,),
         const  SizedBox(height: 17,)
          ],
        ),
      )),
    );
  }
}


