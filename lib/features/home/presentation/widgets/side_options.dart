import 'package:flutter/material.dart';
import 'package:hungry/features/home/presentation/widgets/topping_item.dart';

class SideOptions extends StatelessWidget {
  const SideOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ToppingItem(),
          );
        },
      ),
    );
  }
}