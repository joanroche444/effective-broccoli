import 'package:flutter/material.dart';

class AuthgradientButton extends StatelessWidget {
  const AuthgradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Sign Up'),
      style: ElevatedButton.styleFrom(fixedSize: const Size(395, 55)),
    );
  }
}
