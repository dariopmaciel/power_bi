import 'package:dark_week/app/core/ui/helprs/size_extensions.dart';
import 'package:dark_week/app/core/ui/styles/app_styles.dart';
import 'package:dark_week/app/core/ui/styles/colors_app.dart';

import 'package:dark_week/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            heightFactor: 2,
            child: SizedBox(
              width: context.screenWidth * 1,
              child: Image.asset(
                "assets/images/MultiComp-Banner.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[350],
                  width: 340,
                  height: 550,
                ),
                Image.asset("")
              ],
            ),
          ),

          //Container(width: 200, height: 200, color: Colors.black),
          //Container(width: 50, height: 50, color: Colors.grey),
        ],
      ),
    );
  }
}
