import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/validator_page.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _pwdEC = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text("Cadastro",
                  style:
                      context.textStyles.textExtraBold.copyWith(fontSize: 30)),
              SizedBox(height: context.percentHeight(0.02)),
              Text("Preencha os campos abaixo para criar o seu cadastro",
                  style: context.textStyles.textBold.copyWith(fontSize: 18)),
              SizedBox(height: context.percentHeight(0.01)),
              TextFormField(
                  autofocus: true,
                  controller: _nameEC,
                  decoration: const InputDecoration(labelText: "Nome Completo"),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  validator: Validatorless.multiple([
                    Validatorless.required("*Obrigatório"),
                    Validatorless.min(3, "*Minimo 3 caracteres")
                  ])),
              SizedBox(height: context.percentHeight(0.025)),
              TextFormField(
                  controller: _emailEC,
                  decoration: const InputDecoration(labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: Validatorless.multiple([
                    Validatorless.required("*Email obrigatório"),
                    Validatorless.email("*Email inválido")
                  ])),
              SizedBox(height: context.percentHeight(0.025)),
              TextFormField(
                  obscureText: true,
                  controller: _pwdEC,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                  ),
                  validator: Validatorless.multiple([
                    Validatorless.required("*Senha Obrigatória"),
                    Validatorless.min(3, "*Minimo 3 caracteres")
                  ])),
              SizedBox(height: context.percentHeight(0.025)),
              TextFormField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: "Confirme Senha",
                  ),
                  validator: Validatorless.multiple([
                    Validatorless.required("*Confirmação obrigatória"),
                    Validatorless.compare(_pwdEC, "*SENHAS NÃO CONFEREM")
                  ])),
              SizedBox(height: context.percentHeight(0.05)),
              GenericBtn(
                  label: "CADASTRAR",
                  onPressed: () {
                    final valid = _formKey.currentState?.validate() ?? false;
                    if (valid) {
                      cadastrar();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Future cadastrar() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: _emailEC.text, password: _pwdEC.text);
      if (userCredential != null) {
        //
        userCredential.user!.updateDisplayName(_nameEC.text);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const ValidatorPage(),
            ),
            (route) => false);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "week-password") {
        //
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("CRIE UMA SENHA MAIS FORTE"),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else if (e.code == "email-already-in-use") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("E-MAIL JÁ CADASTRADO"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }
  }
}
