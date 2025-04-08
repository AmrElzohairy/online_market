import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/views/auth/ui/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
      home: LoginView(),
    );
  }
}
