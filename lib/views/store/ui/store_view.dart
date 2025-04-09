import 'package:flutter/material.dart';
import 'package:online_market/core/widgets/custom_search_field.dart';
import 'package:online_market/views/home/ui/widgets/products_list.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const CustomSearchField(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Recently Added",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const ProductsList(),
        ],
      ),
    );
  }
}
