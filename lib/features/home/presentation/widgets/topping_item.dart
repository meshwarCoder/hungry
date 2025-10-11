import 'package:flutter/material.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';

class ToppingItem extends StatelessWidget {
  const ToppingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                ),
                
              
                
            ),
            child: Image.asset(Assets.spicyIcon, height: 25,),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  text: 'Cheese',
                  fontSize: 12,
                  color: Colors.white,
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add, color: Colors.white, size: 12,),
                ),
              ],
            ),
          ),
          
        ],
      ),
      
      );
    
  }
}