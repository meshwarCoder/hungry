import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/features/home/presentation/widgets/vertical_list_item.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 4,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return GestureDetector(
              onTap: () {
                context.push('/product-details');
              },
              child: VerticalListItem(),
            );
          },
          childCount: 20, // عدد العناصر
        ),
      ),
    );
  }
}
