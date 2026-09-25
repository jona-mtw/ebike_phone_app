import 'package:flutter/material.dart';

import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

import 'pages/navigation.dart';
import 'pages/telemetry.dart';
import 'pages/settings.dart';

const customDecoration = BoxDecoration(
  border: Border.fromBorderSide(
    BorderSide(color: Color.fromARGB(255, 55, 41, 98), width: 7),
  ),
  borderRadius: BorderRadius.all(Radius.circular(25)),
  color: Color.fromARGB(255, 119, 101, 227),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: const TabBarView(
            children: [
              HomePage(),
              NavigationPage(),
              TelemetryPage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar: CustomButtomNavigationBar(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 27, 31, 59),
          appBar: CustomAppBar(title: "My E-Bike"),

          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25,
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
                  decoration: customDecoration,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.75,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                      decoration: customDecoration,
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 7.5,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 7,
                            child: Text(
                              "Speed",
                              style: GoogleFonts.kodchasan(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 5,
                            child: Icon(
                              Icons.speed_rounded,
                              size: 45,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 1,
                            child: Text(
                              "15mph",
                              style: GoogleFonts.kodeMono(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: customDecoration,
                      margin: EdgeInsets.only(
                        left: 7.5,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 7,
                            child: Text(
                              "Temperature",
                              style: GoogleFonts.kodchasan(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 5,
                            child: Icon(
                              Icons.thermostat_rounded,
                              size: 45,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: -2,
                            child: Text(
                              "30°C",
                              style: GoogleFonts.kodeMono(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: customDecoration,
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 7.5,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 7,
                            child: Text(
                              "Power",
                              style: GoogleFonts.kodchasan(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 5,
                            child: Icon(
                              Icons.electric_bolt_rounded,
                              size: 45,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: -2,
                            child: Text(
                              "150W",
                              style: GoogleFonts.kodeMono(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: customDecoration,
                      margin: EdgeInsets.only(
                        left: 7.5,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 7,
                            child: Text(
                              "Battery",
                              style: GoogleFonts.kodchasan(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 2,
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Icon(
                                Icons.battery_2_bar_rounded,
                                size: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: -5,
                            child: Text(
                              "86%",
                              style: GoogleFonts.kodeMono(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? action;
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 27, 31, 59),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(75),
            blurRadius: 12,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: AppBar(
        elevation: 0.5,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          title,
          style: GoogleFonts.kodchasan(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 30, top: 10),
      child: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home, size: 30)),
          Tab(icon: Icon(Icons.navigation_rounded, size: 30)),
          Tab(icon: Icon(Icons.insert_chart, size: 30)),
          Tab(icon: Icon(Icons.settings, size: 30)),
        ],
      ),
    );
  }
}
