import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';

class R05Producao extends StatelessWidget {
  const R05Producao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x4(
        label0: "Relatórios - Produção",
        label1: "Previsto X Realizado de Produção",
        onPressed1: () {},
        label2: "Manutenção Interna - QTD",
        onPressed2: () {},
        label3: "Principais Ofensores",
        onPressed3: () {},
        label4: "Ofensores - Acumulado 12",
        onPressed4: () {},
      ),
    );
  }
}
