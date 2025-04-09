  import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';

AppBar buildCustomAppBar({
    required BuildContext context,
    required String title,
  }) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.kWhiteColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: AppColors.kPrimaryColor,
      title: Text(title, style: const TextStyle(color: AppColors.kWhiteColor)),
    );
  }