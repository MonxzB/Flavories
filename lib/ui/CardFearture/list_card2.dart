import 'package:flutter/material.dart';
import 'recipe_card2.dart';

class ListCard2 extends StatelessWidget {
  const ListCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recipes = [
      {
        "imageUrl": "assets/images/card5.png",
        "title": "Keto Salad",
        "subtitle": "Beans & fruits",
        "kcal": "120 Kcal",
        "time": "20 Min",
      },
      {
        "imageUrl": "assets/images/card5.png",
        "title": "Avocado Toast",
        "subtitle": "Avocado & bread",
        "kcal": "250 Kcal",
        "time": "10 Min",
      },
      {
        "imageUrl": "assets/images/card5.png",
        "title": "Berry Smoothie",
        "subtitle": "Mixed berries",
        "kcal": "180 Kcal",
        "time": "15 Min",
      },
    ];

    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RecipeCard2(
              imageUrl: recipes[index]["imageUrl"]!,
              title: recipes[index]["title"]!,
              subtitle: recipes[index]["subtitle"]!,
              kcal: recipes[index]["kcal"]!,
              time: recipes[index]["time"]!,
            ),
          );
        },
      ),
    );
  }
}
