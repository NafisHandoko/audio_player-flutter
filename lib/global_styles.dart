import 'package:flutter/material.dart';

Color color1 = const Color.fromRGBO(43, 43, 43, 1);
Color color2 = const Color.fromRGBO(109, 40, 197, 1);
Color colorStop = const Color.fromRGBO(255, 47, 47, 1);

BorderRadius borderRadius1 = BorderRadius.circular(20);

BoxShadow boxshadow1 = BoxShadow(
    offset: const Offset(0, 0),
    blurRadius: 50,
    spreadRadius: 0,
    color: color2.withOpacity(0.8));
BoxShadow boxshadow2 = BoxShadow(
    offset: const Offset(0, 0),
    blurRadius: 50,
    spreadRadius: 0,
    color: Colors.white.withOpacity(0.4));
