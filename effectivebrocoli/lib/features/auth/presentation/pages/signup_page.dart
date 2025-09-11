import 'package:effectivebrocoli/features/auth/presentation/widgets/auth_field.dart';
import 'package:effectivebrocoli/features/auth/presentation/widgets/authgradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            AuthField(hintText: 'Name'),
            SizedBox(height: 20),
            AuthField(hintText: 'Email'),
            SizedBox(height: 20),
            AuthField(hintText: 'Password'),
            SizedBox(height: 20),
            AuthgradientButton(),
          ],
        ),
      ),
    );
  }
}
