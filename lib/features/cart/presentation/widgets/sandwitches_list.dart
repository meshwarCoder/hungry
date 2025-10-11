import 'package:flutter/material.dart';
import 'package:hungry/features/cart/presentation/widgets/sandwitches_list_item.dart';

class SandwitchesList extends StatelessWidget {
  const SandwitchesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return SandwitchesListItem();
        },
      ),
    );
  }
}