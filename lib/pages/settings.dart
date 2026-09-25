import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      appBar: CustomAppBar(title: "Settings"),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: .end,
                crossAxisAlignment: .center,
                children: [
                  Expanded(
                    child: Text(
                      "(pfp)",
                      style: GoogleFonts.kodchasan(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "jona.mtw",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: customDecoration,
              width: 395,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "GENERAL",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "BIKE",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "TELEMETRY",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ALERTS",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "CONNECTION",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "DEVELOPER",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
