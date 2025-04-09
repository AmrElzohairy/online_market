import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_market/core/theme/app_colors.dart';
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$50",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("3 ", style: TextStyle(fontSize: 17)),
                    Icon(Icons.star, color: Colors.amber),
                    Spacer(),
                    Icon(Icons.favorite, color: AppColors.kGreyColor),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Product Description",
              style: TextStyle(
                fontSize: 17,
                color: AppColors.kBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topCenter,
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder:
                  (context, _) => const Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (rating) {},
            ),
          ),
        ],
      ),
    );
  }
}
