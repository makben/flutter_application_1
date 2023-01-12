import 'dart:ui';
import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:flutter/gestures.dart';

import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double _borderRadius = 24;

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Retry";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          //first container on background
          body: Center(
            child: ListView(
              children: [
                Container(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/one.png"),
                      ),
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                Center(
                    child: Text(
                  "AAMUSTED",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w900,
                  ),
                )),

                //2nd container
                Container(
                  width: 200,
                  height: 100,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 136, 5, 16),
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 100, 19, 19),
                          Color.fromARGB(255, 121, 21, 21)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ]),
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "OSIS-STUDENTS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 248, 248),
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    onTap: () {
                      Uri uri = Uri.https("osissip.osis.online");
                      _launchURL(uri);
                    },
                  ),
                ),

                //third container
                Container(
                  height: 100,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 136, 5, 16),
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 100, 19, 19),
                          Color.fromARGB(255, 121, 21, 21)
                        ],
                      ),
                      boxShadow: [BoxShadow(blurRadius: 7)]),
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "STUDENTS MAIL",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 248, 248),
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    onTap: () {
                      Uri uri = Uri.https("st.aamusted.edu.gh");
                      _launchURL(uri);
                    },
                  ),
                ),

                //fourth container
                Container(
                  height: 100,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 136, 5, 16),
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 100, 19, 19),
                          Color.fromARGB(255, 121, 21, 21)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ]),
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: const Center(
                      child: Text(
                        "AAMUSTED LMS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 248, 248),
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    onTap: () {
                      Uri uri = Uri.parse(
                          Uri.encodeFull("https://lms.aamusted.edu.gh/login"));
                      _launchURL(uri);
                    },
                  ),
                ),

                //last container
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 136, 5, 16),
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 100, 19, 19),
                          Color.fromARGB(255, 121, 21, 21)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                        ),
                      ]),
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Center(
                      child: Center(
                        child: Text(
                          "AMDMISSION STATUS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Uri uri = Uri.parse(Uri.encodeFull(
                          "https://misc.aamusted.edu.gh/admission"));
                      _launchURL(uri);
                    },
                  ),
                ),

                const Center(
                    child: Text(
                  "Copyright 2022",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.normal,
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
