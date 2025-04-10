import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/core/widgets/custom_snac_bar.dart';
import 'package:online_market/views/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_button.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_with_arrow_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          customSnacBar(
            context,
            title: "Login Now",
            message: "Sign Up Success",
            contentType: ContentType.success,
          );
          Navigator.pop(context);
          // navTo(context, const MainViews());
        } else if (state is SignUpFailure) {
          customSnacBar(
            context,
            title: "Sign Up Failed",
            message: state.error,
            contentType: ContentType.failure,
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
                              controller: nameController,
                              labelText: "Name",
                              isSecured: false,
                            ),
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
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [],
                            ),
                            const SizedBox(height: 20),
                            CustomTextWithArrowButton(
                              text: "Sign Up",
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthCubit>().signUp(
                                    nameController.text,
                                    emailController.text,
                                    passwordController.text,
                                  );
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            CustomTextWithArrowButton(
                              text: "Sign Up With Google",
                              onTap: () {},
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account?"),
                                const SizedBox(width: 3),
                                CustomTextButton(
                                  text: "Sign In",
                                  onTap: () {
                                    Navigator.pop(context);
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
