import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/views/favorites/ui/favorites_view.dart';
import 'package:online_market/views/home/ui/home_view.dart';
import 'package:online_market/views/profile/ui/profile_view.dart';
import 'package:online_market/views/store/ui/store_view.dart';

class MainViews extends StatefulWidget {
  const MainViews({super.key});

  @override
  State<MainViews> createState() => _MainViewsState();
}

class _MainViewsState extends State<MainViews> {
  int selectedIndex = 0;
  final List<Widget> views = [
    const HomeView(),
    const StoreView(),
    const FavoritesView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: views),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GNav(
            style: GnavStyle.google,
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            // tab button border
            // tab button shadow
            duration: const Duration(
              milliseconds: 400,
            ), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey, // unselected icon color
            activeColor: AppColors.kWhiteColor, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                AppColors.kPrimaryColor, // selected tab background color
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ), // navigation bar padding
            tabs: [
              const GButton(icon: Icons.home, text: 'Home'),
              const GButton(icon: Icons.store, text: 'Store'),
              const GButton(icon: Icons.favorite, text: 'Favorites'),
              const GButton(icon: Icons.person, text: 'Profile'),
            ],
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            }, // update the selected index
          ),
        ),
      ),
    );
  }
}
