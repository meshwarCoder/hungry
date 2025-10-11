import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        GoRouter.of(context).go(AppRoutes.login);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Spacer(),
          SvgPicture.asset(Assets.logo),
          Spacer(),
          Image.asset(Assets.splash),
        ],
      ),
    );
  }
}
