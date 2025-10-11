import 'package:flutter/material.dart';
import 'package:hungry/features/home/presentation/widgets/header.dart';
import 'package:hungry/features/home/presentation/widgets/horizontal_list.dart';
import 'package:hungry/features/home/presentation/widgets/vertical_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          
          const SliverToBoxAdapter(
            child: Header(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 22,),
          ),
          SliverToBoxAdapter(
            child: HorizontalList(),
          ),

          SliverToBoxAdapter(
            child: const SizedBox(height: 22,),
          ),

          VerticalList(),
          

    
        ],
      ),
    );
  }
}
