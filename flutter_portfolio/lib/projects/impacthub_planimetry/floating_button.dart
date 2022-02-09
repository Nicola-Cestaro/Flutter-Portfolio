import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'info_popup.dart';

class FloatingButton extends StatefulWidget {

  final String onTapLink;

  final String title;
  final String text;

  final IconData iconData;
  final Color color;

  FloatingButton({
    required this.onTapLink,
    required this.title,
    required this.text,
    required this.iconData,
    required this.color
  });

  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

/// Button state to keep track of press and progress animations.
class _FloatingButtonState extends State<FloatingButton> {

  /// The cumulative button widget that builds the front and back layout of the
  /// button.
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
        widget.iconData,
        color: Colors.white,
      ),
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) => Center(
                child: InfoPopup(
                  title: widget.title,
                  text: widget.text,
                  picUrl: "",
                )
            )
        );
      },
      style: ElevatedButton.styleFrom(
          primary: widget.color,
          fixedSize: const Size(50, 50),
          shape: const CircleBorder(),
    ),
    );
  }
}