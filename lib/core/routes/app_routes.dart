import 'package:dalelapp/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:dalelapp/features/splash/presentation/view/splash_sreen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router= GoRouter(routes: [
  GoRoute(path: '/',
  builder: (context, state) =>const SplashSreen(),),
  GoRoute(path: '/onBoarding',
  builder: (context, state) =>const OnBoardingView(),),
]



)


;

