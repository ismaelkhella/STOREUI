import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({
    Key? key,
    required this.textEditingController,
    required this.lableText,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String lableText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        label: Text(lableText),
        labelStyle: const TextStyle(
            color: Color(0xff9A9A9A),
            fontSize: 16,
            fontWeight: FontWeight.w400),
        filled: true,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Color(0xff9A9A9A)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9A9A9A),
          ),
        ),

      ),
    );
  }
}
