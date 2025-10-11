import 'package:flutter/material.dart';
import 'package:hungry/core/utils/routes.dart';

void main() {
  
  runApp(const HungryApp());
}

class HungryApp extends StatelessWidget {
  const HungryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRoutes.router,debugShowCheckedModeBanner: false,);
  }
}

