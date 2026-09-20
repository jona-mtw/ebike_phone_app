import 'package:flutter/material.dart';

import '../main.dart';
import 'navigation.dart';
import 'settings.dart';

class TelemetryPage extends StatelessWidget {
  const TelemetryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      appBar: CustomAppBar(title: "Telemetry"),
      body: const Center(
        child: Text("Telemetry Page", style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
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
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                icon: Icon(Icons.settings, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
