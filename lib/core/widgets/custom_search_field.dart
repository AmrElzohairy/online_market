import 'package:flutter/material.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: "Search",
      suffIcon: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.all(8),
        ),
        label: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
