import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/shared/custom_textformfield.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/features/auth/presentation/widgets/signup_details.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
            const SizedBox(height: 90),
            SvgPicture.asset(Assets.logo),
            const SizedBox(height: 50),
            CustomTextFormField(hintText: 'Name'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Email'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Password', isPassword: true),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Confirm Password', isPassword: true),
            const SizedBox(height: 20),
            AuthCustomButton(onTap: (){}, text: 'Sign Up',),
            const SizedBox(height: 10),
            const SignupDetails(),
          ],
        ),
      ),),
    );
  }
}