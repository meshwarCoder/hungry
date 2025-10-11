import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';

class SandwitchesListItem extends StatefulWidget {
  const SandwitchesListItem({super.key});

  @override
  State<SandwitchesListItem> createState() => _SandwitchesListItemState();
}




class _SandwitchesListItemState extends State<SandwitchesListItem> {
  int count = 2;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_leftSide(), _rightSide()],
          ),
        ),
      ),
    );
  }
  Widget _leftSide() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 15),
      Image.asset(Assets.burger, height: 100),
      CustomText(
        text: 'Cheese Burger',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      CustomText(text: 'Wendy\'s Burger', fontSize: 15),
    ],
  );
}

Widget _rightSide() {
  return SizedBox(
    width: 135,
    child: Column(
      children: [
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: decrement,
              child: Container(
                height: 33,
                width: 31,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(Icons.remove, color: Colors.white),
              ),
            ),
            Text(
              count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            GestureDetector(
              onTap: increment,
              child: Container(
                height: 33,
                width: 31,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(112),
            color: AppColors.primary,
          ),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: (){},
            child: Center(
              child: CustomText(
                text: 'Remove',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}


