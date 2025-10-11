import 'package:flutter/material.dart';
import 'package:hungry/core/utils/assets.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 15, offset: Offset(0, 5)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(Assets.burger, ),
            ),
            const Text('cheese Burger'),
            const Text('Wendy\'s Burger'),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.amber,size: 18,),
                Text('4.5'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
