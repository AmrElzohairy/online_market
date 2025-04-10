import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/views/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:online_market/views/auth/ui/sign_up_view.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_button.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_with_arrow_button.dart';
import 'package:online_market/views/nav_bar/ui/main_home_view.dart';

import '../../../core/helpers/navigation_functions.dart';
import 'forgot_password_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          // navTo(context, const MainViews());
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
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
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              controller: emailController,
                              labelText: "Email",
                              isSecured: false,
                            ),
                            const SizedBox(height: 20),
                            CustomTextFormField(
                              controller: passwordController,
                              labelText: "Password",
                              isSecured: true,
                              suffIcon: const Icon(Icons.visibility),
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
                            CustomTextWithArrowButton(
                              text: "Login",
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthCubit>().login(
                                    emailController.text,
                                    passwordController.text,
                                  );
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            CustomTextWithArrowButton(
                              text: "Login With Google",
                              onTap: () {
                                navTo(context, const MainViews());
                              },
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?"),
                                const SizedBox(width: 3),
                                CustomTextButton(
                                  text: "Sign Up",
                                  onTap: () {
                                    navTo(context, const SignUpView());
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //Column(children: [Text("Welcom to Online Market",)]),
          ),
        );
      },
    );
  }
}
