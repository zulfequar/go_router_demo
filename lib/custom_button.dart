import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double padding;

  /// A custom button with its own padding around all sides.
  /// Default padding value is 10.0
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.padding = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
