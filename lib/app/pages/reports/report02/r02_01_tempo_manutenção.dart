import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x2.dart';

class R0201TempoManutenO extends StatelessWidget {
  const R0201TempoManutenO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GenericAppbar(),
        body: GenericReport1x2(
          label0: "Relatórios Pós Vendas",
          label1: "Tempo Manutenção - Em Garantia",
          onPressed1: () {},
          label2: "Tempo Manutenção - Fora de Garantia",
          onPressed2: () {},
        ));
  }
}
