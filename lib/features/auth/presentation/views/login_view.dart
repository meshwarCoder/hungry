import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';
import 'package:hungry/core/utils/shared/custom_textformfield.dart';
import 'package:hungry/features/auth/presentation/widgets/custom_button.dart';
import 'package:hungry/features/auth/presentation/widgets/login_details.dart';
import 'package:hungry/features/auth/presentation/cubits/login cubit/login_cubit_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocConsumer<LoginCubitCubit, LoginCubitState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errMessage)),
                );
              }
            },
            builder: (context, state) {
              if (state is LoginLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  const SizedBox(height: 90),
                  SvgPicture.asset(Assets.logo),
                  const SizedBox(height: 20),
                  CustomText(
                    text: 'Welcome Back',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 50),
                  CustomTextFormField(hintText: 'Email'),
                  const SizedBox(height: 20),
                  CustomTextFormField(hintText: 'Password', isPassword: true),
                  const SizedBox(height: 20),
                  AuthCustomButton(
                    onTap: () {
                      context.read<LoginCubitCubit>().login(
                        'abdullh@gmail.com',
                        '123456',
                      );
                    },
                    text: 'Login',
                  ),
                  const SizedBox(height: 15),
                  LoginDetails(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
