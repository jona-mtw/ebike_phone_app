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
        mainAxisAlignment: .start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: .end,
              crossAxisAlignment: .center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 50),
                  height: 100,
                  child: Image(image: AssetImage('assets/pfp.png')),
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
          Container(
            decoration: customDecoration,
            width: 395,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(child: GeneralSettings());
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "GENERAL",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(child: BikeSettings());
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "BIKE",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(child: TelemetrySettings());
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "TELEMETRY",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(child: AlertSettings());
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "ALERTS",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(child: ConnectionSettings());
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "CONNECTION",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Color.fromARGB(30, 187, 30, 30),
                          surfaceTintColor: Colors.transparent,
                          child: DeveloperSettings(),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "DEVELOPER",
                      style: GoogleFonts.kodchasan(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralSettings extends StatefulWidget {
  const new({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("General Settings")]));
  }
}

class BikeSettings extends StatefulWidget {
  const new({super.key});

  @override
  State<BikeSettings> createState() => _BikeSettingsState();
}

class _BikeSettingsState extends State<BikeSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("Bike Settings")]));
  }
}

class TelemetrySettings extends StatefulWidget {
  const new({super.key});

  @override
  State<TelemetrySettings> createState() => _TelemetrySettingsState();
}

class _TelemetrySettingsState extends State<TelemetrySettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("Telemetry Settings")]));
  }
}

class AlertSettings extends StatefulWidget {
  const new({super.key});

  @override
  State<AlertSettings> createState() => _AlertSettingsState();
}

class _AlertSettingsState extends State<AlertSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("Alert Settings")]));
  }
}

class ConnectionSettings extends StatefulWidget {
  const new({super.key});

  @override
  State<ConnectionSettings> createState() => _ConnectionSettingsState();
}

class _ConnectionSettingsState extends State<ConnectionSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("Connection Settings")]));
  }
}

class DeveloperSettings extends StatefulWidget {
  const new({super.key});

  @override
  State<DeveloperSettings> createState() => _DeveloperSettingsState();
}

class _DeveloperSettingsState extends State<DeveloperSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("Developer Settings")]));
  }
}
