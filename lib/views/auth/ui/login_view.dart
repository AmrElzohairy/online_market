import 'package:flutter/material.dart';
import 'package:online_market/views/auth/ui/widgets/custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Welcom to Online Market",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomTextFormField(labelText: "Email", isSecured: false),
                    SizedBox(height: 20),
                    CustomTextFormField(
                      labelText: "Password",
                      isSecured: true,
                      suffIcon: Icon(Icons.visibility),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ), //Column(children: [Text("Welcom to Online Market",)]),
      ),
    );
  }
}
