import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/components/retro_wrapper.dart';
import 'dart:math';

class FlutterPopup extends StatelessWidget {

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
            height: 300,
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
                          "Flutter",
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
                                onPressed: (){},
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "This Website is completely build with the Flutter Framework, dig deep to find all the quirks and features that this site hides.",
                      style: GoogleFonts.vt323(
                          fontSize: 22.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RetroWrapper(
                      child: FlatButton(
                        onPressed: (){},
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
                        onPressed: (){},
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