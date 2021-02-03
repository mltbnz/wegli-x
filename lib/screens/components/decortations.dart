import 'package:flutter/material.dart';

class CustomDecorations {
  BoxDecoration baseBackgroundDecoration(){
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(8.0)
    );
  }
}