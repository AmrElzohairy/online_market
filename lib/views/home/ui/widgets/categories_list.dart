import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(categoryName: "Sports", categoryIcon: Icons.sports),
    CategoryModel(categoryName: "Electronics", categoryIcon: Icons.tv),
    CategoryModel(categoryName: "Collections", categoryIcon: Icons.collections),
    CategoryModel(categoryName: "Books", categoryIcon: Icons.book),
    CategoryModel(categoryName: "Games", categoryIcon: Icons.games),
    CategoryModel(categoryName: "Bikes", categoryIcon: Icons.bike_scooter),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.kPrimaryColor,
                  foregroundColor: AppColors.kWhiteColor,
                  child: Icon(categories[index].categoryIcon, size: 30),
                ),
                const SizedBox(height: 10),
                Text(
                  categories[index].categoryName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CategoryModel {
  final String categoryName;
  final IconData categoryIcon;

  CategoryModel({required this.categoryName, required this.categoryIcon});
}
