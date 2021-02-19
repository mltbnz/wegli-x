import 'package:flutter/material.dart';

class CustomDecorations {
  BoxDecoration baseBackgroundDecoration() {
    return BoxDecoration(
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 4.0,
          spreadRadius: 2.0,
          offset: Offset(
            0.0,
            0.0,
          ),
        )
      ],
    );
  }
}
