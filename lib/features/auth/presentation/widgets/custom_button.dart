import 'package:flutter/material.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';

class AuthCustomButton extends StatelessWidget {
  const AuthCustomButton({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: CustomText(text: text)),
      ),
    );
  }
}