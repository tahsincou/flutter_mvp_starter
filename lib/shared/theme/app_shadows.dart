import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static final card = [
    BoxShadow(
      color: Colors.black.withOpacity(.05),
      blurRadius: 8,
      offset: const Offset(0, 2),
    ),
  ];
}
