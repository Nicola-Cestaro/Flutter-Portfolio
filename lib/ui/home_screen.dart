import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'theme/style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_portfolio/components/pixel_button.dart';
import 'package:flutter_portfolio/components/flutter_popup.dart';
import 'package:flutter_portfolio/components/whois_popup.dart';
import 'dart:html' as html;
import 'dart:js' as js;


class HomeScreen extends StatefulWidget{

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  int pageSteps = 0;

  @override
  Widget build(BuildContext context){


    Size screenSize = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration:  pageSteps == 1 ? const Duration(milliseconds: 400) : const Duration(milliseconds: 800),
              top: pageSteps == 0 ? screenSize.height / 2 : pageSteps == 1 ? screenSize.height / 2 - 50 : screenSize.height / 3,
              curve: Curves.easeInOutExpo,
              child: Column(
                children: [
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    onFinished: (){
                      setState(() {
                        pageSteps = 1;
                      });
                    },
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Nicola Cestaro',
                        textStyle: GoogleFonts.vt323(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: primaryColor
                        ),
                        speed: const Duration(milliseconds: 100),

                      ),
                    ],

                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  pageSteps > 0 ? AnimatedTextKit(
                    isRepeatingAnimation: false,
                    onFinished: (){
                      setState(() {
                        pageSteps = 2;
                      });
                    },
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Fullstack Developer',
                        textStyle: GoogleFonts.vt323(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: primaryColor
                        ),
                        speed: const Duration(milliseconds: 100),

                      ),
                    ],
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ) : Container(),
                ],
              ),
            ),
            pageSteps > 1 ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PixelButton(
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) => Center(
                            child: FlutterPopup()
                        )
                    );
                  },
                  text: "Flutter",
                ),
                PixelButton(
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) => Center(
                            child: WhoIsPopup()
                        )
                    );
                  },
                  text: "WHOIS",
                ),
                PixelButton(
                  onTap: (){

                  },
                  text: "BLOG",
                ),
                PixelButton(
                  onTap: (){

                  },
                  text: "GAMES",
                )
              ],
            ) : Container()
          ],
        ),
      ),
    );
  }
}