import 'package:flutter/material.dart';
import 'package:online_market/core/helpers/navigation_functions.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/views/profile/ui/edit_name_view.dart';
import 'package:online_market/views/profile/ui/my_orders_view.dart';
import 'package:online_market/views/profile/ui/widgets/custom_profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.kPrimaryColor,
              foregroundColor: AppColors.kWhiteColor,
              child: Icon(Icons.person, size: 40),
            ),
            const SizedBox(height: 10),
            const Text(
              "Amr Elzohairy",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              "4zHtH@example.com",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                navTo(context, const EditNameView());
              },
              child: const CustomProfileCard(
                icon: Icons.person,
                title: "Edit Name",
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                navTo(context, const MyOrdersView());
              },
              child: const CustomProfileCard(
                icon: Icons.shopping_basket_sharp,
                title: "My Orders",
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: const CustomProfileCard(
                icon: Icons.logout,
                title: "Logout",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
