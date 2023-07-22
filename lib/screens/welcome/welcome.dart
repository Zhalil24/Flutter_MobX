import 'package:flutter/material.dart';
import 'package:flutter_application_mobx/widget/appbar.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: "Hoşgeldiniz"),
      body: const Center(child: FlutterLogo(size: 200)),
    );
  }
}
