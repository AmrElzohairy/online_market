import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.kPrimaryColor, fontSize: 16),
      ),
    );
  }
}
