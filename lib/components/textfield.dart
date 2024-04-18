import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Widget? textFieldLabel;
  final TextEditingController controller;
  final bool isPassword;

  const MyTextField({
    super.key,
    required this.controller,
    this.textFieldLabel,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: textFieldLabel,
        ),
        controller: controller,
        obscureText: isPassword,
      ),
    );
  }
}