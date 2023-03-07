import 'package:dark_week/app/core/ui/provider/aplication_binding.dart';
import 'package:dark_week/app/core/ui/theme/theme_config.dart';

import 'package:dark_week/app/pages/splash_page.dart';
import 'package:flutter/material.dart';

class McRoute extends StatelessWidget {
  const McRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return AplicationBinding(
      child: MaterialApp(
        title: "MultiComp APP",
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          "/": (context) => SplashPage(),
        },
      ),
    );
  }
}
