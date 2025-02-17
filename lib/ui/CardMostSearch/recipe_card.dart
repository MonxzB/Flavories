import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> ingredients;
  final String calories;
  final String time;
  final String chefName;
  final String chefImage;
  final int likes;

  const RecipeCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.ingredients,
    required this.calories,
    required this.time,
    required this.chefName,
    required this.chefImage,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 350, // Đặt giới hạn chiều cao tối đa
      ),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Đảm bảo Column chỉ chiếm không gian cần thiết
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hình ảnh món ăn
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              // Sử dụng Expanded để tránh lỗi tràn
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tiêu đề món ăn
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Danh sách nguyên liệu với giới hạn chiều cao
                    SizedBox(
                      height: 40, // Giới hạn chiều cao của Wrap
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Wrap(
                          spacing: 2,
                          runSpacing: 2,
                          children:
                              ingredients
                                  .map(
                                    (ingredient) => Chip(
                                      label: Text(
                                        ingredient,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffD5D6D2),
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                      shape: const StadiumBorder(
                                        side: BorderSide(
                                          color: Color(0xffD8DEE4),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),

                    const SizedBox(height: 4),

                    // Calories và thời gian nấu
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "🔥 $calories",
                          style: const TextStyle(color: Colors.red),
                        ),
                        Text(
                          "⏳ $time",
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),

                    const Divider(),

                    // Thông tin đầu bếp
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(chefImage),
                          radius: 15,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          chefName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.favorite_border, color: Colors.red),
                        Text(
                          " $likes",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
