 import 'package:go_router/go_router.dart';

void custemNvigator(context,String path) {
     GoRouter.of(context).push(path);
  }


  void custemReplacementNvigator(context,String path) {
     GoRouter.of(context).pushReplacement(path);
  }