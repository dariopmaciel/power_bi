import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';

class R09ComprasNac extends StatelessWidget {
  const R09ComprasNac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x4(
        label0: "Relatórios - Compras Nacionais",
        label1: "label1",
        onPressed1: () {},
        label2: "label2",
        onPressed2: () {},
        label3: "label3",
        onPressed3: () {},
        label4: "label4",
        onPressed4: () {},
      ),
    );
  }
}
