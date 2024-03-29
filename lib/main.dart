import 'package:firebase_core/firebase_core.dart';

import 'package:power_bi/app/firebase/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/theme/theme_config.dart';
import 'package:power_bi/app/pages/splash/splash_page.dart';

//late final FirebaseApp app;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Inteligence',
      theme: ThemeConfig.theme,
      home: const SplashPage(),
    );
  }
}
