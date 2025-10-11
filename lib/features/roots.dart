
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/features/cart/presentation/view/cart_view.dart';
import 'package:hungry/features/home/presentation/views/home_view.dart';
import 'package:hungry/features/order/presentation/views/order_view.dart';
import 'package:hungry/features/profile/presentation/views/profile_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

late PageController pageController;
late List<Widget> views;

int currentScreen = 0;


class _RootState extends State<Root> {

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentScreen);
    views = [
      HomeView(),
      CartView(),
      OrderView(),
      ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: views,
        onPageChanged: (value) {
          setState(() {
            currentScreen = value;
          });
        },
      ),


    bottomNavigationBar: Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          
          ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: currentScreen,
        onTap: (value) {
          setState(() {
            currentScreen = value;
            pageController.jumpToPage(
              value,
            );
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
         
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_sharp),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    ),
    );
  }
}