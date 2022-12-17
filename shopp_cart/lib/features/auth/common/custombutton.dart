import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String Txt;
  const CustomButton({super.key, required this.Txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(Txt),
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 54)),
    );
  }
}
