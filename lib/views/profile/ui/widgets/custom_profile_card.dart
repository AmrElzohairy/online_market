
import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: AppColors.kWhiteColor),
            const Spacer(),
            Text(title, style: const TextStyle(color: AppColors.kWhiteColor)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: AppColors.kWhiteColor),
          ],
        ),
      ),
    );
  }
}
