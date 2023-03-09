import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/validator_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _firebaseAuth = FirebaseAuth.instance;

  String nome = "";
  String email = "";
  @override
  void initState() {
    takeUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Usuário: $nome"),
              accountEmail: Text("E-mail: $email"),
              currentAccountPicture:
                  Image.asset("assets/images/MultiComp-LOGO.png"),
            ),
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PRODUÇÃO ATUAL",
                    style: context.textStyles.textBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: context.percentHeight(0.01)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          dense: false,
                          title: Text("TEMPO DE PRODUÇÃO"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("TOTAL PERDA E QUEBRA"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("QTD TOTAL DE MANUTENÇÃO \nEM PRODUÇÃO"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("TEMPO DE EXPEDIÇÃO"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(height: context.percentHeight(0.02)),
                  //
                  Text(
                    "PÓS VENDAS",
                    style: context.textStyles.textBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: context.percentHeight(0.01)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          splashColor: Color(0xff1A4CAB),
                          title: Text("TEMPO MÉDIO DE \nATENDIMENTO HELP DESK"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          splashColor: Color(0xff1A4CAB),
                          title: Text("TEMPO MÉDIO MANUTENÇÃO"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          splashColor: Color(0xff1A4CAB),
                          title: Text("QTD TOTAL DE MANUTENÇÃO \nEM PRODUÇÃO"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          splashColor: Color(0xff1A4CAB),
                          title: Text("TEMPO MÉDIO EXPEDIÇÃ AO CLIENTE"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.percentHeight(0.04)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xff1A4CAB),
                    ),
                    child: ListTile(
                      dense: true,
                      onTap: () => logout(),
                      title: const Text(
                        "SAIR",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }

  takeUser() async {
    User? usuario = await _firebaseAuth.currentUser;
    if (usuario != null) {
      setState(() {
        //print(usuario);
        nome = usuario.displayName!;
        email = usuario.email!;
      });
      //print(usuario);
    }
  }

  logout() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ValidatorPage(),
            ),
          ),
        );
    //
  }
}
