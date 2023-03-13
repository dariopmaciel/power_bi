import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x2.dart';

class R03Fiscal extends StatelessWidget {
  const R03Fiscal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x2(
        label0: "Relatórios - Fiscais",
        label1: "Emissão de NF Incorretas e Ofensores",
        onPressed1: () {},
        label2: "Ofensores - Acumulados 12",
        onPressed2: () {},
      ),
    );
  }
}
