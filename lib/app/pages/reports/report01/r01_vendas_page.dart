import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/app_styles.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/app_bar/generic_appbar.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_a_quarter_btn.dart';
import 'package:power_bi/app/core/ui/widgets/reports/generic_report_1x4.dart';

class R01VendasPage extends StatelessWidget {
  const R01VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Relatórios - Vendas",
                    style: context.textStyles.textBold.copyWith(fontSize: 28)),
              ),
//----------------->
              Container(
                height: context.percentWidth(0.25),
                width: context.percentHeight(1),
                decoration: BoxDecoration(
                  color: Color(0xffD9DFEB),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Previsto X Realizado Mensal: [Dez/2021]",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: context.percentWidth(0.001)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: context.percentHeight(0.09),
                          width: context.percentWidth(0.4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: context.colors.primary),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Prevista: ",
                                      style: context.textStyles.textBold
                                          .copyWith(
                                              fontSize:
                                                  context.percentHeight(0.018),
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: context.percentHeight(0.01)),
                                Text(
                                  "[R 5.000.000,00]",
                                  style: context.textStyles.textBold.copyWith(
                                      fontSize: context.percentHeight(0.018),
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          height: context.percentHeight(0.09),
                          width: context.percentWidth(0.4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: context.colors.primary),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Realizada: [96%]",
                                      style: context.textStyles.textBold
                                          .copyWith(
                                              fontSize:
                                                  context.percentHeight(0.018),
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: context.percentHeight(0.01)),
                                Text(
                                  "[R 4.600.000,00]",
                                  style: context.textStyles.textBold.copyWith(
                                      fontSize: context.percentHeight(0.018),
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
//----------------->
              // SizedBox(height: context.percentHeight(0.01)),
              // Container(
              //   height: context.screenHeight * 1,
              //   width: context.screenWidth * 1,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(7),
              //     color: const Color(0xffD9DFEB),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
