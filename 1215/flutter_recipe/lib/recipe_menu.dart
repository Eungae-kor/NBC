import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          menuItem(Icons.food_bank, "전체"),
          SizedBox(width: 25),
          menuItem(Icons.emoji_food_beverage, "음료"),
          SizedBox(width: 25),
          menuItem(Icons.fastfood, "버거"),
          SizedBox(width: 25),
          menuItem(Icons.local_pizza, "피자"),
        ],
      ),
    );
  }

  Container menuItem(IconData icon, String text) {
    // menuItem은 Container (class)에 종속되는 메서드.
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.redAccent),
          SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}
