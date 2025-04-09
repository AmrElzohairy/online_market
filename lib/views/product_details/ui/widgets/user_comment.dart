import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';

class UserComment extends StatelessWidget {
  const UserComment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User 1",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.kBlackColor,
            ),
          ),
          Text(
            "Comment 1",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.kGreyColor,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Reply",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.kBlackColor,
            ),
          ),
          Text(
            "reply 1",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
