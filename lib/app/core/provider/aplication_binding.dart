import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AplicationBinding extends StatelessWidget {
  final Widget child;

  const AplicationBinding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: child,
    );
  }
}
