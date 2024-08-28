import 'package:dalelapp/features/auth/presentation/view/sign_in.dart';
import 'package:dalelapp/features/auth/presentation/view/sign_up.dart';
import 'package:dalelapp/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:dalelapp/features/splash/presentation/view/splash_sreen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router= GoRouter(routes: [
  GoRoute(path: '/',
  builder: (context, state) =>const SplashSreen(),),


  GoRoute(path: '/onBoarding',
  builder: (context, state) =>const OnBoardingView(),),

  GoRoute(path: '/signUp',
  builder: (context, state) =>const SignUpView(),),



 GoRoute(path: '/signIn',
  builder: (context, state) =>const SignInView(),),
]



)


;

