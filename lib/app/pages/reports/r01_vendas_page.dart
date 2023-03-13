import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';

class R01VendasPage extends StatelessWidget {
  const R01VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: Container(
          color: Colors.blue,
          child: Center(
            child: Text("RELATÓRIO DE VENDAS"),
          )),
    );
  }
}
