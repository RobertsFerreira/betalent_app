import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  const TextFieldComponent({super.key, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          prefixIcon: const Icon(
            Icons.search,
            size: 18,
            color: Color(0xFF1C1C1C),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'HelveticaNeue',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
