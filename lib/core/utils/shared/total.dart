import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.bottomText});
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total',style: TextStyle(color: Colors.black,fontSize: 22),),
              Text('99',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            ],
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(bottomText,style: TextStyle(color: Colors.white,fontSize: 19),),
            ),
          )
        ],

      ) ,
    );
  }
}