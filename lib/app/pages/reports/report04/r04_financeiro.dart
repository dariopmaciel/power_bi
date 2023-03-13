import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x2.dart';

class R04Financeiro extends StatelessWidget {
  const R04Financeiro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x2(
        label0: "Relatórios Financieros",
        label1: "Atraso no Recebimento (%Monetário)",
        onPressed1: () {},
        label2: "Ofensores - Acumulado 12",
        onPressed2: () {},
      ),
    );
  }
}
