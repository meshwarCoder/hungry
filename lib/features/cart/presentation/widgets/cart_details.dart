import 'package:flutter/material.dart';
import 'package:hungry/core/utils/shared/total.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Total(bottomText: 'Checkout',);
  }
}