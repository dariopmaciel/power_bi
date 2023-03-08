import 'package:flutter/material.dart';

class GenericAppbar extends AppBar {
  GenericAppbar({
    super.key,
    double elevation = 0,
  }) : super(
          elevation: elevation,
          backgroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 120,
          title: Image.asset(
            "assets/images/MultiComp-Banner.png",
            width: 275,
          ),
        );
}
