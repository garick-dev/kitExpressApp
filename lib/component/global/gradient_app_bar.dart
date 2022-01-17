import 'package:flutter/material.dart';


class GradientAppBar extends StatefulWidget {
  const GradientAppBar({Key? key}) : super(key: key);

  @override
  State<GradientAppBar> createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<GradientAppBar> {


  /////////////////////////GLOBAL//////////////////////


  //color
  static const orangeColor = Color(0xFFF49613);
  static const yellowColor = Color(0xFFFBC11D);

  /////////////GLOBAL////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                orangeColor,
                Color(0xFFFBC41E),
              ])
      ),

    );

  }
}
