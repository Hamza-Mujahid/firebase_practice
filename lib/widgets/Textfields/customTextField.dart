import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String customHintText;
  final IconData customIcon;
  final ValueChanged<String>? onchange;

  const CustomTextField({
    super.key,
    required this.customHintText,
    required this.customIcon,
    this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 16, color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        hintText: customHintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          customIcon,
          color: Colors.grey,
        ),
        fillColor: Colors.grey.shade800,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
      onChanged: onchange,
    );
  }
}
