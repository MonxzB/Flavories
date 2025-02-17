import 'package:flutter/material.dart';
import 'package:fluttertest/ui/CardFearture/list_card2.dart';
import 'package:fluttertest/ui/CardMostSearch/list_card.dart';
import 'package:fluttertest/ui/ChefList/chef_list.dart';
import 'package:fluttertest/ui/TopReceipes/list_top_recipe.dart';
import '../components/navbar.dart';
import '../components/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F9),
      body: Column(
        children: [
          const SafeArea(child: CustomHeader()),
          Expanded(
            child: ListView(
              // Thay SingleChildScrollView bằng ListView
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildSectionTitle("Khám phá công thức"),
                _buildRecipeHighlight(),
                _buildSectionTitle("Tìm kiếm nhiều nhất"),
                SizedBox(
                  // Wrap horizontal ListView in SizedBox with fixed height
                  height: 300,
                  child: _buildPopularRecipes(),
                ),
                _buildSectionTitle("Đề xuất"),
                _buildRecommendedRecipes(),
                _buildSectionTitle("Đầu bếp nổi tiếng"),
                SizedBox(
                  // Wrap chef list in SizedBox with fixed height
                  child: _buildFamousChefs(),
                ),
                _buildSectionTitle("Top công thức"),
                _buildTopRecipes(),
                const SizedBox(height: 20), // Bottom padding
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildRecipeHighlight() {
    List<String> imageUrls = [
      'assets/images/card1.png',
      'assets/images/ccc.png',
      'assets/images/ccc.png',
    ];

    return SizedBox(
      height: 150, // Định chiều cao cho danh sách
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Cuộn ngang
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Bo góc ảnh
              child: Image.asset(
                imageUrls[index],
                width: 264, // Độ rộng mỗi ảnh
                height: 172,
                fit: BoxFit.cover, // Đảm bảo ảnh lấp đầy khung
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPopularRecipes() {
    return SizedBox(
      height: 330, // Chiều cao phù hợp để chứa danh sách ngang
      child: RecipeListView(),
    );
  }

  Widget _buildRecommendedRecipes() {
    return SizedBox(
      height: 200, // Chiều cao phù hợp để chứa danh sách ngang
      child: ListCard2(),
    );
  }

  Widget _buildFamousChefs() {
    return SizedBox(child: ChefList());
  }

  Widget _buildTopRecipes() {
    return SizedBox(child: ListTopRecipe());
  }
}
