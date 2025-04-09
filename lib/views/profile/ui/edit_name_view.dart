import 'package:flutter/material.dart';
import 'package:online_market/core/widgets/build_custom_app_bar.dart';
import 'package:online_market/views/auth/ui/widgets/custom_button.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context: context, title: "Edit Name"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextFormField(labelText: "Name", isSecured: false),
            const SizedBox(height: 30),
            CustomEvButton(
              text: "Update",
              onTap: () {
                // Handle submit action
              },
            ),
          ],
        ),
      ),
    );
  }
}
