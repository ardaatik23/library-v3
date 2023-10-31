import 'package:flutter/material.dart';
import 'package:kutuphaneapp/pages/login_page.dart';

void main() {
  runApp(KutuphaneApp());
}

class KutuphaneApp extends StatelessWidget {
  const KutuphaneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPageScreen(),
      ),
    );
  }
}
