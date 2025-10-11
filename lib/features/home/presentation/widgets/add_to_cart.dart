import 'package:flutter/material.dart';
import 'package:hungry/core/utils/shared/total.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Total(bottomText: 'Add To Cart',);
  }
}