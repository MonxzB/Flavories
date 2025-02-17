import 'package:flutter/material.dart';
import 'recipe_card.dart';

class RecipeListView extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      "imageUrl": "assets/images/card5.png",
      "title": "Xốt Hummus",
      "ingredients": ["🥗 Dầu olive", "🧄 Tỏi", "🧆 Đậu gà"],
      "calories": "120 Kcal",
      "time": "20 Min",
      "chefName": "Elena Shelby",
      "chefImage": "https://your-chef-image-url.com",
      "likes": 3000
    },
    {
      "imageUrl": "assets/images/card5.png",
      "title": "Bánh Pancake",
      "ingredients": ["🥚 Trứng", "🥛 Sữa", "🍯 Mật ong"],
      "calories": "250 Kcal",
      "time": "30 Min",
      "chefName": "John Doe",
      "chefImage": "https://your-chef-image-url.com",
      "likes": 1500
    },
    {
      "imageUrl": "assets/images/card5.png",
      "title": "Sinh tố Bơ",
      "ingredients": ["🥑 Bơ", "🥛 Sữa đặc", "🍯 Mật ong"],
      "calories": "180 Kcal",
      "time": "10 Min",
      "chefName": "Emma Watson",
      "chefImage": "https://your-chef-image-url.com",
      "likes": 2200
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: RecipeCard(
            imageUrl: recipes[index]["imageUrl"],
            title: recipes[index]["title"],
            ingredients: List<String>.from(recipes[index]["ingredients"]),
            calories: recipes[index]["calories"],
            time: recipes[index]["time"],
            chefName: recipes[index]["chefName"],
            chefImage: recipes[index]["chefImage"],
            likes: recipes[index]["likes"],
          ),
        );
      },
    );
  }
}
