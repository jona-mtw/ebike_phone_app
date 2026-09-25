import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class TelemetryPage extends StatelessWidget {
  const TelemetryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      appBar: CustomAppBar(title: "Telemetry"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Text(
                          "DISTANCE",
                          style: GoogleFonts.kodchasan(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "14mi",
                          style: GoogleFonts.kodeMono(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Text(
                          "BATTERY",
                          style: GoogleFonts.kodchasan(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "86%",
                          style: GoogleFonts.kodeMono(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Text(
                          "POWER",
                          style: GoogleFonts.kodchasan(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "140W",
                          style: GoogleFonts.kodeMono(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: customDecoration,
                child: Center(
                  child: Text(
                    "Graph",
                    style: GoogleFonts.kodeMono(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Average Speed: 14.3mph",
                    style: GoogleFonts.kodchasan(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Max Speed: 15mph",
                    style: GoogleFonts.kodchasan(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Distance: 14mi",
                    style: GoogleFonts.kodchasan(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Time: 1hr",
                    style: GoogleFonts.kodchasan(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
