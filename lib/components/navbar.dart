import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent, // Nền trong suốt
      color: Color(0xFFFEFEFE), // Màu nền navbar (FEFEFE)
      buttonBackgroundColor: Color(0xFF84CC16), // Màu nền khi chọn
      height: 68,
      animationDuration: Duration(milliseconds: 300),
      items: [
        _buildNavItem(Icons.restaurant_menu, 0),
        _buildNavItem(Icons.search, 1),
        _buildNavItem(Icons.explore, 2),
        _buildNavItem(Icons.person, 3),
      ],
      index: selectedIndex,
      onTap: onTap,
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return Icon(
      icon,
      size: 24,
      color: isSelected
          ? Color(0xFFFEFEFE)
          : Color(0xFF9FA196), // Màu FEFEFE khi chọn, 9FA196 khi chưa chọn
    );
  }
}
