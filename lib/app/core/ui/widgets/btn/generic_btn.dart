import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';

class GenericBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const GenericBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    Colors.red;
    return SizedBox(
      width: 200,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
