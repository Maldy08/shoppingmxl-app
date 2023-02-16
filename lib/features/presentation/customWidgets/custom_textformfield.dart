import 'package:flutter/material.dart';
import 'package:shoppingmxl/colors/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  const CustomTextFormField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: const Icon(
          Icons.account_circle_rounded,
          color: primaryColor,
        ),
        filled: true,
        fillColor: bgContainer,
        labelText: text,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
