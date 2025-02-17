import 'package:flutter/material.dart';
import 'package:fluttertest/ui/TopReceipes/top_recipe.dart';

class ListTopRecipe extends StatelessWidget {
  const ListTopRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Chiều cao của danh sách
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Cuộn ngang
        itemCount: 6, // Số lượng item
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return const TopRecipe();
        },
      ),
    );
  }
}
