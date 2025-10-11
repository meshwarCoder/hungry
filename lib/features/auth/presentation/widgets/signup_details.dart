import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupDetails extends StatelessWidget {
  const SignupDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Text(
            'Login',
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