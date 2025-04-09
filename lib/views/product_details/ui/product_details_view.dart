import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_market/core/widgets/build_custom_app_bar.dart';
import 'package:online_market/views/home/ui/widgets/product_image_skeletone.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context: context, title: "Product Details"),
      body: ListView(
        children: [
          CachedNetworkImage(
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl:
                "https://img.freepik.com/free-vector/skincare-products-with-aloe-cosmetic-ad_52683-34036.jpg?ga=GA1.1.730899520.1744201824&semt=ais_country_boost&w=740",
            placeholder: (context, url) => const ProductImageSkelton(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
