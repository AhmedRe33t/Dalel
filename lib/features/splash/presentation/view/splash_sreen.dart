import 'package:dalelapp/core/function/navigation.dart';
import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    delayNavigation(context);
    super.initState();
  }


 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(AppStrings.appName,style: CustomTextStyles.pacifico400style64,),
      ),
    );
  }
}
  void delayNavigation(context) {
     Future.delayed(const Duration(seconds: 2),(){
        custemNvigator(context,'/onBoarding');
    });
  }
