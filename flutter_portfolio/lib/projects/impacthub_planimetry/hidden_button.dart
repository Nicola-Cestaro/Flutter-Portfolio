import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'info_popup.dart';

class HiddenButton extends StatefulWidget {

  final double width;
  final double height;

  double? top;
  double? left;
  double? right;
  double? bottom;

  final String title;
  final String text;
  final String picUrl;

  HiddenButton({
    required this.title,
    required this.text,
    required this.picUrl,
    required this.width,
    required this.height,
    this.top,
    this.left,
    this.right,
    this.bottom,
  });

  @override
  _HiddenButtonState createState() => _HiddenButtonState();
}

/// Button state to keep track of press and progress animations.
class _HiddenButtonState extends State<HiddenButton> {

  /// The cumulative button widget that builds the front and back layout of the
  /// button.
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right: widget.right,
      bottom: widget.bottom,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: TextButton(
          child: const Text(
            "",
          ),
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => Center(
                    child: InfoPopup(
                      title: widget.title,
                      text: widget.text,
                      picUrl: widget.picUrl,
                    )
                )
            );
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.orange.withOpacity(0.04);
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed))
                  return Colors.orange.withOpacity(0.12);
                return null; // Defer to the widget's default.
              },
            ),
          ),
        ),
      ),
    );
  }
}