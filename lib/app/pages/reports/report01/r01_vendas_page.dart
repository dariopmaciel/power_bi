import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';

class R01VendasPage extends StatelessWidget {
  const R01VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: GenericReport1x4(
        label0: "Relatorios de Vendas",
        label1: "Previsto X Realizado",
        onPressed1: () {},
        label2: "Acumulado 3",
        onPressed2: () {},
        label3: "Acumulado 6",
        onPressed3: () {},
        label4: "Acumulado 12",
        onPressed4: () {},
      ),
    );
  }
}
