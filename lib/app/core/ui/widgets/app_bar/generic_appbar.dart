import 'package:flutter/material.dart';

class GenericAppbar extends AppBar {
  GenericAppbar({
    super.key,
    double elevation = 1,
    var child,
  }) : super(
          elevation: elevation,
          backgroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 120,
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Image.asset(
              "assets/images/MultiComp-Banner.png",
              width: 275,
            ),
          ),
        );
}
