import 'package:flutter/material.dart';

SnackBar customSnackBar(String message, {Color? backgroundColor}) {
  return SnackBar(
    content: Text(message),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    margin: const EdgeInsets.all(16),
    padding: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
