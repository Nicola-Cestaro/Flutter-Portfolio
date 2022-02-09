import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/components/retro_wrapper.dart';
import 'dart:math';

class WhoIsPopup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: RetroWrapper(
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(3),
            width: min(screenSize.width * 0.90,400),
            height: 396,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Color(0xff0000a8),
                  width: double.infinity,
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "WHOIS",
                          style: GoogleFonts.vt323(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          RetroWrapper(
                            borderWidth: 2,
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 15,maxHeight: 15),
                              child: TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Container(),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 3),
                            child: Text(
                              "x",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.vt323(
                                  fontSize: 24.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Registrar Info",
                      style: GoogleFonts.vt323(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Name",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Nicola Cestaro",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Organization",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Drenlab SRL",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Country",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "IT",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Status",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Fullstack Developer",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Flutter Enthusiast",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Important Dates",
                      style: GoogleFonts.vt323(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Registered On",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "1998-05-01",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Expires On",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "1997-09-29",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Years Of Exp",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "5+",
                              style: GoogleFonts.vt323(
                                  fontSize: 22.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RetroWrapper(
                      child: FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                            "Cancel",
                            style: GoogleFonts.vt323(
                                fontSize: 22.0,
                                color: Colors.black
                            ),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                    RetroWrapper(
                      child: FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Ignore",
                          style: GoogleFonts.vt323(
                              fontSize: 22.0,
                              color: Colors.black
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ),

                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              ],
            )
        ),
      ),
    );
  }
}