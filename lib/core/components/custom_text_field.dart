import 'package:flutter/material.dart';

// import 'spaces.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: showLabel
                ? label
                : null, // Menggunakan labelText untuk floating label
            labelStyle: const TextStyle(color: Colors.grey), // Warna label
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            hintText: showLabel
                ? null
                : label, // Menampilkan hintText jika label tidak ditampilkan
            floatingLabelBehavior:
                FloatingLabelBehavior.auto, // Mengatur perilaku label
          ),
        ),
      ],
    );
  }
}
