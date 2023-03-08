import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/register/register_page.dart';
import 'package:power_bi/app/pages/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailEC = TextEditingController();
  final _pwdEC = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  bool _showPWD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text("CRIAR CONTA"),
            ),
            Center(
              child: ListView(
                children: [
                  Text("Login",
                      style: context.textStyles.textExtraBold
                          .copyWith(fontSize: 30)),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailEC,
                    //autofocus: true,
                    decoration: const InputDecoration(
                        labelText: "E-mail", border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: _pwdEC,
                    obscureText: _showPWD == false ? true : false,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPWD == false
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onTap: () {
                          setState(
                            () {
                              _showPWD = !_showPWD;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: context.percentHeight(.05)),
                  
                  SizedBox(height: context.percentHeight(.05)),
                  GenericBtn(
                    onPressed: () {},
                    label: "ENTRAR",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  login() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: _emailEC.text, password: _pwdEC.text);
      if (userCredential != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Usuário não encontrado"),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else if (error.code == "wrong-password") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Senha Errada"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }
  }
}
