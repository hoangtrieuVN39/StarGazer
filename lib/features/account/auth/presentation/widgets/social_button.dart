import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const SocialButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: const Size(140, 48),
      ),
      icon: SizedBox(width: 24, height: 24, child: icon),
      label: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
