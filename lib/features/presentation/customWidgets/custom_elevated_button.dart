import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? func;
  final String label;
  final Color color;

  const CustomElevatedButton({
    super.key,
    required this.func,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          color,
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
