import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';
import 'package:power_bi/app/pages/reports/report02/r02_01_tempo_manuten%C3%A7%C3%A3o.dart';
import 'package:power_bi/app/pages/reports/report02/r02_02_tempo_exped_manut.dart';

class R0200PosVendas extends StatelessWidget {
  const R0200PosVendas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x4(
        label0: "Relatórios de Pós Vendas",
        label1: "Tempo de atendimento HelpDesk",
        onPressed1: () {},
        label2: "Tempo de Liberação NF",
        onPressed2: () {},
        label3: "Tempo de Manutenção Equipamento",
        onPressed3: () {
          Navigator.push(
            context,
            PageTransition(
              child: const R0201TempoManutenO(), //    <--------------------- ok
              type: PageTransitionType.rightToLeft,
              duration: const Duration(milliseconds: 400),
              reverseDuration: const Duration(milliseconds: 400),
            ),
          );
        },
        label4: "Tempo de Exped. de Equipamento Pronto",
        onPressed4: () {
          Navigator.push(
            context,
            PageTransition(
              child:
                  const R0202TempoExpedManut(), //    <--------------------- ok
              type: PageTransitionType.rightToLeft,
              duration: const Duration(milliseconds: 400),
              reverseDuration: const Duration(milliseconds: 400),
            ),
          );
        },
      ),
    );
  }
}
