import 'package:flutter/material.dart';
import 'package:online_market/views/home/ui/widgets/products_list.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Your Favorite Products",
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
