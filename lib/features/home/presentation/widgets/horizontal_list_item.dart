import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key, required this.boxColor, required this.textColor });
  final Color boxColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: boxColor,
      ),
    padding: const EdgeInsets.symmetric(horizontal: 15),
      
      
      margin: const EdgeInsets.all(8),
      child: Center(
        child: Text("itemfgg",style: TextStyle(color: textColor),),
      ),
    );
  }
}