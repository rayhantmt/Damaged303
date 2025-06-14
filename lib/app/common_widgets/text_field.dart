import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  const CustomTextFormField({
    super.key,
    required this.hintText,
     this.controller,
    required this.obscureText,
    this.suffixIcon,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 9, bottom: 9),
      child: TextFormField(
        obscureText: obscureText,
        obscuringCharacter: '*',
        
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: true,
          fillColor: Color(0xFFF7F7F9),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
