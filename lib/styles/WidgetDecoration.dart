import 'package:flutter/material.dart';

final BoxDecoration cardStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 30,
      offset: const Offset(5, 15),
    )
  ],
);
