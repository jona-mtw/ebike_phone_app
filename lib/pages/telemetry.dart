import 'package:flutter/material.dart';

import '../main.dart';

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
    );
  }
}
