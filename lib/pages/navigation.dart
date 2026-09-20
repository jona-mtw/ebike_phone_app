import 'package:flutter/material.dart';

import '../main.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      appBar: CustomAppBar(title: "Navigation"),
      body: Center(
        child: Text("Navigation", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
