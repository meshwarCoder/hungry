import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';

class Spicy extends StatelessWidget {
  const Spicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.spicy, height: 250),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: CustomText(
                text:
                    'Customize Your Burger to Your Tastes. Ultimate Experience',
                fontSize: 16,
              ),
            ),
            SizedBox(height: 18),
            CustomText(text: 'Spicy', fontSize: 16),
            SizedBox(height: 8),
            SizedBox(
              width: 170,
              child: Slider(
                activeColor: AppColors.primary,
                
                value: 0,
                onChanged: (value) {},
                padding: EdgeInsets.only(left: 10),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Assets.noSpicyIcon, height: 18),
                  Image.asset(Assets.spicyIcon, height: 18),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
