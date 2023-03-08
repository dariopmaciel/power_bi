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
  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('USUÁRIO NÃO ESTÁ LOGADO!');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        print('USUÁRIO ESTÁ LOGADO!');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
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
