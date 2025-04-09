import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_market/views/home/ui/widgets/product_image_skeletone.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../auth/ui/widgets/custom_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: CachedNetworkImage(
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://img.freepik.com/free-vector/skincare-products-with-aloe-cosmetic-ad_52683-34036.jpg?ga=GA1.1.730899520.1744201824&semt=ais_country_boost&w=740",
                  placeholder: (context, url) => const ProductImageSkelton(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
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
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  "Product Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kBlackColor,
                  ),
                ),
                Spacer(),
                Icon(Icons.favorite, color: AppColors.kGreyColor),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Column(
                  children: [
                    Text(
                      "100\$",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kBlackColor,
                      ),
                    ),
                    Text(
                      "120\$",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kGreyColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Expanded(child: CustomEvButton(text: "Buy Now", onTap: () {})),
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
