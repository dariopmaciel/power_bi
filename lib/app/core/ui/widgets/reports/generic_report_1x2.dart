import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';

class GenericReport1x2 extends StatelessWidget {
  final String label0;
  final String label1;
  final String label2;

  final VoidCallback? onPressed1;
  final VoidCallback? onPressed2;

  const GenericReport1x2({
    super.key,
    required this.label0,
    required this.label1,
    required this.label2,
    required this.onPressed1,
    required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(label0,
                      style:
                          context.textStyles.textBold.copyWith(fontSize: 28)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: onPressed1,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9DFEB),
                      minimumSize: Size(
                        context.percentWidth(1),
                        context.percentHeight(0.30),
                      ),
                    ),
                    child: Text(
                      label1,
                      style: TextStyle(color: Colors.black),
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
                        context.percentHeight(0.30),
                      ),
                    ),
                    child: Text(
                      label2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
