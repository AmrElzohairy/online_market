import 'package:flutter/material.dart';
import 'package:online_market/views/auth/ui/widgets/custom_button.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text(
              "Enter your email to reset your\n password",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 80),
            const Card(
              child: CustomTextFormField(labelText: "Email", isSecured: false),
            ),
            const SizedBox(height: 50),
            CustomEvButton(onTap: () {}, text: "Submit"),
          ],
        ),
      ),
    );
  }
}
