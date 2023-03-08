import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:power_bi/app/pages/auth/login/login_page.dart';
import 'package:power_bi/app/pages/home/home_page.dart';

class ValidatorPage extends StatefulWidget {
  const ValidatorPage({super.key});

  @override
  State<ValidatorPage> createState() => _ValidatorPageState();
}

class _ValidatorPageState extends State<ValidatorPage> {
  StreamSubscription? streamSubscription;

  @override
  void initState() {
    super.initState();

    streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          //print('VOCÊ NÃO ESTÁ LOGADO');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
          //print('VOCÊ ESTÁ LOGADO');
        }
      },
    );
  }

  @override
  void dispose() {
    streamSubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
