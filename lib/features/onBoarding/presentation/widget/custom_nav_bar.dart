import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
            alignment: Alignment.centerRight,
            child: Text(AppStrings.skip,
                     style: CustomTextStyles.poppins400style12.copyWith(fontSize: 16)),
          );
  }
}