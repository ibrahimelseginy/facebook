import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final String hint;
  final TextInputType? textInputType;
  final bool obscureText;

  const Text_Field(
      {super.key,
      required this.hint,
      this.textInputType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white.withOpacity(.5))),
      ),
    );
  }
}
