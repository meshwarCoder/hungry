import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/routes.dart' show AppRoutes;
import 'package:hungry/core/utils/shared/custom_text.dart';
import 'package:hungry/core/utils/shared/custom_textformfield.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_button.dart';
import 'package:hungry/features/auth/presentation/widgets/login_details.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 90),
              SvgPicture.asset(Assets.logo),
              const SizedBox(height: 20),
              CustomText(text: 'Welcome Back', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              const SizedBox(height: 50),
              CustomTextFormField(hintText: 'Email'),
              const SizedBox(height: 20),
              CustomTextFormField(hintText: 'Password', isPassword: true),
              const SizedBox(height: 20),
              AuthCustomButton(onTap: (){
                GoRouter.of(context).go(AppRoutes.root);
              }, text: 'Login',),
              const SizedBox(height: 15),
              LoginDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
