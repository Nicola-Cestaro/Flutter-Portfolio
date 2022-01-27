import 'package:flutter/material.dart';
import 'package:flutter_portfolio/ui/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';

/// Gradient settings enum, this can be used to change the direction of the button
/// color gradients.
enum GradientOrientation {
  Vertical,
  Horizontal,
}

class PixelButton extends StatefulWidget {

  final String text;

  final Function onTap;

  PixelButton({
    required this.onTap,
    required this.text,
  });

  @override
  _PixelButtonState createState() => _PixelButtonState();
}

/// Button state to keep track of press and progress animations.
class _PixelButtonState extends State<PixelButton> with TickerProviderStateMixin {
  double _borderThickness = 5;
  double _moveMargin = 0.0;
  double _progressWidth = 0.0;
  bool _showProgress = false;
  bool _tapped = false;
  bool _processing = false;
  int _progressBarMillis = 2500;

  /// The back view of the button that gives the feel of 3D border.
  Widget _buildBackLayout() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: 200,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: pixelBorder, left: pixelBorder, right: pixelBorder)
        ),
      ),
    );
  }

  /// The front view of the button, that has the user child widget content and
  /// progress widget to show progress animation.
  Widget _buildFrontLayout() {
    return AnimatedContainer(

      width: 200,
      height: 50,
      onEnd: () {
        setState(() {
          _moveMargin = 0;
          _tapped = false;
        });
      },
      margin: EdgeInsets.only(top: _moveMargin),
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: primaryColor,
        border: Border(top: pixelBorder, left: pixelBorder, right: pixelBorder)
      ),
      child: Text(
        widget.text.toUpperCase(),
        style: GoogleFonts.archivo(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }

  /// The progress widget.
  Widget _buildProgressBar() {
    return AnimatedSize(
      vsync: this,
      duration: Duration(milliseconds: _progressBarMillis),
      curve: Curves.fastOutSlowIn,
      child: Container(
        width: _progressWidth,
        height: double.infinity,
        color: new Color.fromARGB(60, 255, 255, 255),
      ),
    );
  }

  /// User provided child widget.
  Widget _buildUserChild() {
    return const Align(
      alignment: Alignment.center,
      //child: widget.child != null ? widget.child : Text(''),
      child: Text(""),
    );
  }

  /// The button press handler for the gesture detector. This will be triggered
  /// when button is pressed. Calls the user provided onTap function.
  void _onTap() {
    setState(() {
      _moveMargin = _borderThickness;
      _tapped = true;
    });
    widget.onTap();
  }

  /// The finish method that will reset the state of the animation, user
  /// has to call this explicitly from the parent.
  void _finish() {
    setState(() {
      _showProgress = false;
      _progressWidth = 0;
      _processing = false;
      _progressBarMillis = 1;
    });
  }

  /// The cumulative button widget that builds the front and back layout of the
  /// button.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: 200,
        height: 70,
        child: Stack(
          children: <Widget>[
            _buildBackLayout(),
            _buildFrontLayout(),
          ],
        ),
      ),
    );
  }
}