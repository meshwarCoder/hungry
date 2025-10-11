
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 15,
            offset: Offset(0,3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        cursorColor: Colors.black,
        cursorHeight: 16,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 17, bottom: 17),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
        ),        
      ),
    );
  }
}