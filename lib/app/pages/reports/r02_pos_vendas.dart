import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';

class R02PosVendas extends StatelessWidget {
  const R02PosVendas({super.key});

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
        onPressed3: () {},
        label4: "Tempo de Exped. de Equipamento Pronto",
        onPressed4: () {},
      ),
    );
  }
}
