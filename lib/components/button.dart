import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget? buttonLabel;
  final Color? buttonColor;
  final double buttonBorderRadius;
  final EdgeInsetsGeometry? buttonPadding;

  final Function() onTapFunction;

  const MyButton({
    super.key,
    required this.buttonLabel,
    this.buttonColor,
    this.buttonBorderRadius = 0,
    this.buttonPadding = const EdgeInsets.all(10),

    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        padding: buttonPadding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(buttonBorderRadius),
          ),
        ),
        child: buttonLabel,
      ),
    );
  }
}