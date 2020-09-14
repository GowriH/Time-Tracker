import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    Widget child,
    Color color,
    VoidCallback onPressed,
  }) : super(
          child: child,
          onPressed: onPressed,
          borderRadius: 4.0,
          color: color,
          height: 60,
        );
}
