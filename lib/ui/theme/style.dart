import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundColor = const Color(0xFF01033E);

Color primaryColor = const Color(0xff32fadf);

Color secondaryColor = const Color(0xFF77ecff);

Color purpleColor = const Color(0xFF5E68ED);

Color greenColor = const Color(0xFF32fadf);

BorderSide pixelBorder = const BorderSide(color: Colors.black, width: 3);

ThemeData appTheme = ThemeData(
    hintColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: secondaryColor, width: 2.0),
        ),
        hintStyle: GoogleFonts.roboto(
            color: Colors.white.withOpacity(0.6),
            fontSize: 16,
        ),
        contentPadding: const EdgeInsets.only(left: 20),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
    ),
    primaryColor: secondaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: secondaryColor
        )
    )
);

TextStyle textInputStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16,
);

List<Color> gradientColors = [
    primaryColor,
    const Color(0xff4584f3),
    secondaryColor
];

TextStyle buttonTextStyle = GoogleFonts.ptSans(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold
);

TextStyle popupText = GoogleFonts.nunito(
    color: Colors.black54,
    fontSize: 19.0,
);

TextStyle inputText = GoogleFonts.nunito(
    color: Colors.white,
    fontSize: 21.0,
);

Color IconColor = const Color(0xaabc4ecf);