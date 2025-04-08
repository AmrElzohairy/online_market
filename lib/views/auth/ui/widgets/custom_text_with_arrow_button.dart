import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';

class CustomTextWithArrowButton extends StatelessWidget {
  const CustomTextWithArrowButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: const TextStyle(fontSize: 20)),
        const Spacer(),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ],
    );
  }
}
