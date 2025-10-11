import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/core/utils/routes.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Don\'t have an account? ',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.signUp);
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
