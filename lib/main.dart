import 'package:dalelapp/core/databases/cash/cash_helper.dart';
import 'package:dalelapp/core/routes/app_routes.dart';
import 'package:dalelapp/core/utils/app_colors.dart';
import 'package:dalelapp/features/splash/presentation/view/splash_sreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper().init();
  runApp(const DalelApp());
}

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,

    );
  }
}

