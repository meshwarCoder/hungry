import 'package:flutter/material.dart';
import 'package:hungry/features/cart/presentation/widgets/cart_details.dart';
import 'package:hungry/features/cart/presentation/widgets/sandwitches_list.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SandwitchesList(),
        CartDetails(),
      ],
    );
  }
}