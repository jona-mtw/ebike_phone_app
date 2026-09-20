import 'package:flutter/material.dart';

import '../main.dart';
import 'telemetry.dart';
import 'settings.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation")),
      body: const Center(child: Text("Navigation Page")),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 30),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: Icon(Icons.home, size: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPage(),
                  ),
                );
              },
              icon: Icon(Icons.navigation_rounded, size: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelemetryPage(),
                  ),
                );
              },
              icon: Icon(Icons.insert_chart, size: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
              icon: Icon(Icons.settings, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
