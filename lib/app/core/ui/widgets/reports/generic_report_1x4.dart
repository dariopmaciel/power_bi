import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';

class GenericReport1x4 extends StatelessWidget {
  final String label0;
  final String label1;
  final String label2;
  final String label3;
  final String label4;

  final VoidCallback? onPressed1;
  final VoidCallback? onPressed2;
  final VoidCallback? onPressed3;
  final VoidCallback? onPressed4;

  const GenericReport1x4({
    super.key,
    required this.label0,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
    required this.onPressed1,
    required this.onPressed2,
    required this.onPressed3,
    required this.onPressed4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(label0,
                  style: context.textStyles.textBold.copyWith(fontSize: 28)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: onPressed1,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9DFEB),
                  minimumSize: Size(
                    context.percentWidth(1),
                    context.percentHeight(0.15),
                  ),
                ),
                child: SizedBox(
                  //color: Colors.blue,
                  height: context.percentWidth(0.25),
                  width: context.percentHeight(1),
                  child: Text(
                    label1,
                    style: const TextStyle(
                      color: Colors.black,
                      //backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: onPressed2,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9DFEB),
                  minimumSize: Size(
                    context.percentWidth(1),
                    context.percentHeight(0.15),
                  ),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: context.percentWidth(0.25),
                  width: context.percentHeight(1),
                  child: Text(
                    label2,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: onPressed3,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9DFEB),
                  minimumSize: Size(
                    context.percentWidth(1),
                    context.percentHeight(0.15),
                  ),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: context.percentWidth(0.25),
                  width: context.percentHeight(1),
                  child: Text(
                    label3,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: onPressed4,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9DFEB),
                  minimumSize: Size(
                    context.percentWidth(1),
                    context.percentHeight(0.15),
                  ),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: context.percentWidth(0.25),
                  width: context.percentHeight(1),
                  child: Text(
                    label4,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
