import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';

class GenericAQuarterBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const GenericAQuarterBtn(
      {super.key,
      required this.label,
      this.onPressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffD9DFEB),
        minimumSize: Size(
          context.percentWidth(1),
          context.percentHeight(0.15),
        ),
      ),
      child: Container(
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
    );
  }
}
