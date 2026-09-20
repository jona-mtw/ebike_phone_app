import 'package:flutter/material.dart';

import '../main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      appBar: CustomAppBar(title: "Settings"),
      body: const Center(
        child: Text("Settings Page", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
