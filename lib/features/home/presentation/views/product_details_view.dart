import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/core/utils/shared/custom_text.dart';
import 'package:hungry/features/home/presentation/widgets/spicy.dart';
import 'package:hungry/features/home/presentation/widgets/toppings.dart';
import 'package:hungry/features/home/presentation/widgets/side_options.dart';
import 'package:hungry/features/home/presentation/widgets/add_to_cart.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
      GoRouter.of(context).pop();
        }, icon: Icon(Icons.arrow_back),),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spicy(),
            SizedBox(height: 15,),
            CustomText(text: '     Toppings', fontSize: 16,),
            SizedBox(height: 15,),
            Toppings(),
            SizedBox(height: 30,),
            CustomText(text: '     Side Options', fontSize: 16,),
            SideOptions(),
            SizedBox(height: 15,),
            AddToCart(),
      
          ],
        ),
      )
    );
  }
}