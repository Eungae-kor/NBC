import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  RecipeListItem(this.path, this.title, this.content);

  String path;
  String title;
  String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(path, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 20)),
          SizedBox(height: 4),
          Text(content, style: TextStyle(fontSize: 12, color: Colors.black45)),
        ],
      ),
    );
  }
}
