import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/register/register_page.dart';
import 'package:power_bi/app/pages/home/home_page.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _pwdEC = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  bool _showPWD = false;

  @override
  void dispose() {
    _emailEC.dispose();
    _pwdEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style:
                        context.textStyles.textExtraBold.copyWith(fontSize: 30),
                  ),
                  SizedBox(height: context.percentHeight(0.03)),
                  TextFormField(
                    controller: _emailEC,
                    keyboardType: TextInputType.emailAddress,
                    //autofocus: true,
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                    ),
                    validator: Validatorless.multiple(
                      [
                        Validatorless.required("E-mail obrigatório!"),
                        Validatorless.email("E-mail inválido."),
                      ],
                    ),
                  ),
                  SizedBox(height: context.percentHeight(0.05)),
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
                    validator: Validatorless.required("Senha obrigatória!"),
                  ),
                  SizedBox(height: context.percentHeight(.08)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          //LOGIN DIGITAL
                          //LOGIN DIGITAL
                          //LOGIN DIGITAL
                          //LOGIN DIGITAL
                          //LOGIN DIGITAL
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/finger_print.svg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // LOGIN CONTA APPLE
                          // LOGIN CONTA APPLE
                          // LOGIN CONTA APPLE
                          // LOGIN CONTA APPLE
                          // LOGIN CONTA APPLE
                        },
                        icon: SvgPicture.asset("assets/icons/apple.svg",
                            height: 100, width: 100),
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            //LOGIN CONTA GOOGLE
                            //LOGIN CONTA GOOGLE
                            //LOGIN CONTA GOOGLE
                            //LOGIN CONTA GOOGLE
                            //LOGIN CONTA GOOGLE
                          },
                          icon: SvgPicture.asset("assets/icons/gmail-80.svg",
                              height: 100, width: 100)),
                    ],
                  ),
                  SizedBox(height: context.percentHeight(.08)),
                  Center(
                    child: GenericBtn(
                      label: "LOGIN",
                      onPressed: () {
                        //LOGIN EMAIL + SENHA REGISTRADA
                        //LOGIN EMAIL + SENHA REGISTRADA
                        //LOGIN EMAIL + SENHA REGISTRADA
                        //LOGIN EMAIL + SENHA REGISTRADA
                        //LOGIN EMAIL + SENHA REGISTRADA
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Não possui conta?",
                    style: context.textStyles.textBold.copyWith(fontSize: 14)),
                TextButton(
                  onPressed: () {
                    //EFETUAR CADASTRO
                    //EFETUAR CADASTRO
                    //EFETUAR CADASTRO
                    //EFETUAR CADASTRO
                    //EFETUAR CADASTRO
                  },
                  child: Text(
                    "CADASTRE-SE",
                    style: context.textStyles.textBold
                        .copyWith(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
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

  register() async {}
}
