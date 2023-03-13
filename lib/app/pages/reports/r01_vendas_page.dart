import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';

class R01VendasPage extends StatelessWidget {
  const R01VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Relatório de Vendas",
                      style:
                          context.textStyles.textBold.copyWith(fontSize: 28)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      //
                      //
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9DFEB),
                      minimumSize: Size(
                        context.percentWidth(1),
                        context.percentHeight(0.18),
                      ),
                    ),
                    child: const Text(
                      "Previsto X Realisado - Mensal",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      //
                      //
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9DFEB),
                      minimumSize: Size(
                        context.percentWidth(1),
                        context.percentHeight(0.18),
                      ),
                    ),
                    child: const Text(
                      "Acumulado - 3 Meses",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      //
                      //
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9DFEB),
                      minimumSize: Size(
                        context.percentWidth(1),
                        context.percentHeight(0.18),
                      ),
                    ),
                    child: const Text(
                      "Acumulado - 6 Meses",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      //
                      //
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9DFEB),
                      minimumSize: Size(
                        context.percentWidth(1),
                        context.percentHeight(0.18),
                      ),
                    ),
                    child: const Text(
                      "Acumulado - 12 Meses",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
