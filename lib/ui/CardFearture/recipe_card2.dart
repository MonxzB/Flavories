import 'package:flutter/material.dart';

class RecipeCard2 extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String kcal;
  final String time;

  const RecipeCard2({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.kcal,
    required this.time,
  }) : super(key: key);

  @override
  _RecipeCard2State createState() => _RecipeCard2State();
}

class _RecipeCard2State extends State<RecipeCard2> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              widget.imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                child: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.grey,
                  size: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            widget.subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.local_fire_department,
                size: 14,
                color: Colors.orange,
              ),
              const SizedBox(width: 4),
              Text(widget.kcal, style: const TextStyle(fontSize: 12)),
              const SizedBox(width: 10),
              const Icon(Icons.access_time, size: 14, color: Colors.orange),
              const SizedBox(width: 4),
              Text(widget.time, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
