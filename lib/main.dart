import 'package:fade_in_out/curved_anim.dart';
import 'package:fade_in_out/fade_in_out_anim.dart';
import 'package:fade_in_out/hero_anim.dart';
import 'package:fade_in_out/tween_anim.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
