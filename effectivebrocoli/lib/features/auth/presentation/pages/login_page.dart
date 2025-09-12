import 'package:effectivebrocoli/core/theme/app_pallete.dart';
import 'package:effectivebrocoli/features/auth/presentation/pages/signup_page.dart';
import 'package:effectivebrocoli/features/auth/presentation/widgets/auth_field.dart';
import 'package:effectivebrocoli/features/auth/presentation/widgets/authgradient_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static route() => MaterialPageRoute(builder: (context) => LoginPage());

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwirdController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwirdController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log in',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              AuthField(hintText: 'Email', controller: emailController),
              SizedBox(height: 20),
              AuthField(
                hintText: 'Password',
                controller: passwirdController,
                isObscureText: true,
              ),
              SizedBox(height: 20),
              AuthgradientButton(buttonText: 'Log In'),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, SignupPage.route());
                },
                child: RichText(
                  text: TextSpan(
                    text: ' Dont Have a Account yet ?',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Create Brocolli  ',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: AppPallete.gradient2,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
