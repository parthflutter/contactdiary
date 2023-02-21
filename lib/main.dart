import 'package:contactdiary/second.dart';
import 'package:flutter/material.dart';

import 'app.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>diary(),
        'home':(context)=>home(),
      }
    ),
  );
}