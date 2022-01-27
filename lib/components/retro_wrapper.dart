import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';


class RetroWrapper extends StatelessWidget{

  final Widget child;

  final double borderWidth;

  RetroWrapper({
    required this.child,
    this.borderWidth = 3
  });

  /// The cumulative button widget that builds the front and back layout of the
  /// button.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: borderWidth, color: Color(0xffc0c7c8)),right: BorderSide(width: borderWidth, color: Colors.black),left: BorderSide(width: borderWidth, color: Color(0xffc0c7c8)),bottom: BorderSide(width: borderWidth, color: Colors.black)),
      ),
      child: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(width: borderWidth, color: Colors.white),right: BorderSide(width: borderWidth, color: Color(0xff87888f)),left: BorderSide(width: borderWidth, color: Colors.white),bottom: BorderSide(width: borderWidth, color: Color(0xff87888f))),
            color: Color(0xffc0c7c8),
          ),
        child: child
      ),
    );
  }
}