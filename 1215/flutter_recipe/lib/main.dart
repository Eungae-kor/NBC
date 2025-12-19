import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/recipe_list_item.dart';
import 'package:flutter_recipe/recipe_menu.dart';
import 'package:flutter_recipe/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'KBIZ'),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(CupertinoIcons.search, size: 30),
          SizedBox(width: 15),
          Icon(CupertinoIcons.heart, size: 30, color: Colors.redAccent),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(
              "assets/images/coffee.jpg",
              "맛있는 커피",
              "강릉은 커피의 도시, 그 중에서도 제일은 데자뷰 로스터리임. 여기 안 가봤으면 커피의 세계를 아직 다 안다고 할 수 없다. 여기서부터 새로운 지평선이 열림.",
            ), // for coffee
            RecipeListItem(
              "assets/images/burger.jpg",
              "존맛탱 버거",
              "햄버거 좀 치냐? 햄버거는 맥도날드지. 그치만 거기서 제일 맛있는 건 초코썬데이라는 사실.",
            ), // for burger
            RecipeListItem(
              "assets/images/pizza.jpg",
              "피자는 한물 갔음",
              "1인 가구 폭증으로 피자는 혼자 못 먹어, 피자의 시대가 가고 햄버거의 시대가 왔다. 혼자의 시대가 왔다. 그래도 가끔은 피자먹고 싶엉.",
            ), // for pizza
          ],
        ),
      ),
    );
  }
}
