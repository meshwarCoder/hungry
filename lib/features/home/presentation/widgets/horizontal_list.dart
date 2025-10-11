import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/features/home/presentation/widgets/horizontal_list_item.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}
int selectIndex = 0;

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: HorizontalListItem(
                boxColor: selectIndex == index ? AppColors.primary : Color(0xFFF3F4F6),
                textColor: selectIndex == index ? Colors.white : Colors.black,
              ),
            );
          },
        ),
      ),
    );
  }
}
