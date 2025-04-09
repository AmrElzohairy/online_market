import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/core/widgets/custom_search_field.dart';
import 'package:online_market/views/home/ui/widgets/categories_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const CustomSearchField(),
          const SizedBox(height: 20),
          Image.asset("assets/images/buy.jpg", fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          CategoriesList(),
          const SizedBox(height: 20),
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.network(
                  "https://img.freepik.com/free-vector/skincare-products-with-aloe-cosmetic-ad_52683-34036.jpg?ga=GA1.1.730899520.1744201824&semt=ais_country_boost&w=740",
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "10% off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
