import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';

class GenericReport extends StatelessWidget {
  final String label0;
  final String label;

  final VoidCallback? onPressed;

  const GenericReport({
    super.key,
    required this.label0,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(label0,
                    style: context.textStyles.textBold.copyWith(fontSize: 28)),
              ),
              ElevatedButton(
                onPressed: onPressed,
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
                    label,
                    style: const TextStyle(
                      color: Colors.black,
                      //backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
