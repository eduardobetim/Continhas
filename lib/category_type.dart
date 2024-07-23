import 'package:flutter/material.dart';

enum CategoryType {
  shopping,
  leisure,
  food,
  house,
  clothes,
  other,
}

const categoryTypeIcons = {
  CategoryType.shopping: Icons.shop,
  CategoryType.leisure: Icons.videogame_asset,
  CategoryType.food: Icons.lunch_dining,
  CategoryType.house: Icons.house,
  CategoryType.clothes: Icons.checkroom,
  CategoryType.other: Icons.new_label_outlined,
};
