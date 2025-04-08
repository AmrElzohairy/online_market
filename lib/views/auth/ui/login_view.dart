import 'package:flutter/material.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_button.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_with_arrow_button.dart';

import '../../../core/navigation_functions.dart';
import 'forgot_password_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcom to Online Market",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 100),
              Card(
                margin: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        labelText: "Email",
                        isSecured: false,
                      ),
                      const SizedBox(height: 20),
                      const CustomTextFormField(
                        labelText: "Password",
                        isSecured: true,
                        suffIcon: Icon(Icons.visibility),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomTextButton(
                            text: "Forgot Password?",
                            onTap: () {
                              navTo(context, const ForgotPasswordView());
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomTextWithArrowButton(text: "Login", onTap: () {}),
                      const SizedBox(height: 20),
                      CustomTextWithArrowButton(
                        text: "Login With Google",
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          const SizedBox(width: 3),
                          CustomTextButton(text: "Sign Up", onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ), //Column(children: [Text("Welcom to Online Market",)]),
      ),
    );
  }
}
