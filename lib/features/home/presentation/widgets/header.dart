import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/features/home/presentation/widgets/search.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              SvgPicture.asset(Assets.logo, colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)),
              const Spacer(),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.primary,
                child: Icon(CupertinoIcons.person, color: Colors.white,),
              ),
            ],
          ),
          const Text('Hello, Abdullah', style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10),
          const Search(),
        ],
      ),
    );
  }
}