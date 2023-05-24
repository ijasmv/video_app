import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.autoFocus = false,
  });
  final String label;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool autoFocus;
  // final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autofocus: autoFocus,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a value";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        counter: const SizedBox(),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: label,
      ),
    );
  }
}
