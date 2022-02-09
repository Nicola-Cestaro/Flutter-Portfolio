import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/components/retro_wrapper.dart';
import 'dart:math';

class TitleCustomClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path path = Path();
    double offset = 30.0;
    path.lineTo(offset, size.height);
    path.lineTo(size.width - offset, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
class InfoPopup extends StatelessWidget {

  final String title;
  final String text;
  final String picUrl;

  InfoPopup({
    required this.title,
    required this.text,
    required this.picUrl
  });

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          width: min(screenSize.width * 0.90,800),
          height: min(screenSize.height * 0.60,500),
          child:Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 4,
                    child: SizedBox.expand(
                      child: Container(
                        color: Colors.orange,
                        child: Image.network(
                          picUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 20,right: 50,bottom: 30,top: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 50),
                            child: Text(
                              text,
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "SEE MORE...",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (context) => Center(

                                  )
                              );
                            },
                            color: Colors.orange,
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 60,
                child: ClipPath(
                  clipper: TitleCustomClipper(),
                  child: Container(
                    color: Colors.white,
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      title,
                      style: GoogleFonts.abrilFatface(
                          fontSize: 50,
                          color: Colors.black87,
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}