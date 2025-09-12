import 'package:effectivebrocoli/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthgradientButton extends StatelessWidget {
  final String buttonText;
  const AuthgradientButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
