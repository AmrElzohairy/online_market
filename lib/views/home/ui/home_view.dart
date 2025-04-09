import 'package:flutter/material.dart';
import 'package:online_market/core/widgets/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        ],
      ),
    );
  }
}
