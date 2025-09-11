import 'package:effectivebrocoli/core/theme/theme.dart';
import 'package:effectivebrocoli/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Effective Broccoli',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
    );
  }
}
