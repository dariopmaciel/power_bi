import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/app_styles.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/validator_page.dart';
import 'package:power_bi/app/pages/reports/report08/r08_dep_prod_acabados.dart';
import 'package:power_bi/app/pages/reports/report07/r07_dep_mat_primas.dart';
import 'package:power_bi/app/pages/reports/report06/r06_expedicao.dart';
import 'package:power_bi/app/pages/reports/report01/r01_vendas_page.dart';
import 'package:power_bi/app/pages/reports/report02/r02_00_pos_vendas.dart';
import 'package:power_bi/app/pages/reports/report03/r03_fiscal.dart';
import 'package:power_bi/app/pages/reports/report04/r04_financeiro.dart';
import 'package:power_bi/app/pages/reports/report05/r05_producao.dart';
import 'package:power_bi/app/pages/reports/report09/r09_compras_nac.dart';
import 'package:power_bi/app/pages/reports/report10/r10_compras_inter.dart';

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
      //resizeToAvoidBottomInset: false,
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
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DADOS DO USUÁRIO",
                    style:
                        context.textStyles.textExtraBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: context.percentHeight(0.01)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("PERFIL",
                              style: context.textStyles.textBold
                                  .copyWith(fontSize: 16)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("HISTÓRICO",
                              style: context.textStyles.textBold
                                  .copyWith(fontSize: 16)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(height: context.percentHeight(0.02)),
                  //
                  Text(
                    "DADOS DA CONTA",
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
                          title: Text("PREFERENCIAS",
                              style: context.textStyles.textBold
                                  .copyWith(fontSize: 16)),
                          trailing: const Icon(Icons.arrow_forward_ios),
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
                      title: Text(
                        "SAIR",
                        textAlign: TextAlign.center,
                        style: context.textStyles.textBold
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R01VendasPage(), //    <--------------------- OK
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "VENDAS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R0200PosVendas(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "PÓS \nVENDAS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R03Fiscal(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "FISCAL",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R04Financeiro(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "FINANCEIRO",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R05Producao(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "PRODUÇÃO",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R06Expedicao(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "EXPEDIÇÃO",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R07DepMatPrimas(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "DEPOSITO DE \nMATÉRIAS PRIMAS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R08DepProdAcabados(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "DEPOSITO DE \nMATERIAIS ACABADOS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R09ComprasNac(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "COMPRAS \nNACIONAIS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child:
                              const R10ComprasInter(), //    <--------------------- ok
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth * 0.37,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "COMPRAS \nINTERNACIONAIS",
                          style: context.textStyles.textBold
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
