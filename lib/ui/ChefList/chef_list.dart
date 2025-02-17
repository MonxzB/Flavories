import 'package:flutter/material.dart';

class Chef {
  final String name;
  final String imageUrl;

  Chef({required this.name, required this.imageUrl});
}

class ChefList extends StatelessWidget {
  ChefList({Key? key}) : super(key: key);

  final List<Chef> chefs = [
    Chef(name: "Gordon Ramsay", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Wolfgang Puck", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Thomas Keller", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Charles Phan", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Thomas Keller", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Charles Phan", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Christine Hà", imageUrl: "assets/images/avaChef1.png"),
    Chef(name: "Wolfgang Puck", imageUrl: "assets/images/avaChef1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        spacing: 10, // Khoảng cách giữa các phần tử ngang
        runSpacing: 10, // Khoảng cách giữa các hàng dọc
        // alignment: WrapAlignment.center, // Căn giữa nội dung
        children: [
          ...chefs.map((chef) => _buildChefCard(chef)).toList(),
          _buildAddButton(), // Thêm nút "+"
        ],
      ),
    );
  }

  Widget _buildChefCard(Chef chef) {
    return SizedBox(
      width: 60, // Đặt width cố định
      child: Column(
        mainAxisSize: MainAxisSize.min, // Kích thước vừa với nội dung
        children: [
          CircleAvatar(
            radius: 27, // Giảm kích thước avatar để vừa 55px width
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(chef.imageUrl),
          ),
          const SizedBox(height: 5),
          Text(
            chef.name,
            style: const TextStyle(
              fontSize: 10, // Giảm font để vừa với width
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // Cắt chữ nếu quá dài
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return SizedBox(
      width: 55,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Xử lý khi nhấn vào nút "+"
            },
            child: const CircleAvatar(
              radius: 27,
              backgroundColor: Colors.grey,
              child: Icon(Icons.add, size: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
