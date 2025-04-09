import 'package:flutter/material.dart';
import 'package:online_market/views/home/ui/widgets/product_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, index) => const SizedBox(height: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (_, index) {
        return const ProductItem();
      },
    );
  }
}
