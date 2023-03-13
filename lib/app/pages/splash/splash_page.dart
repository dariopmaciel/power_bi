import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/helpers/size_extensions.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';
import 'package:power_bi/app/core/ui/widgets/btn/generic_btn.dart';
import 'package:power_bi/app/pages/auth/validator_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    context.colors.primary;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            heightFactor: 1.5,
            child: SizedBox(
              width: context.percentHeight(0.5),
              child: Image.asset(
                "assets/images/MultiComp-Banner.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: context.percentHeight(0.27)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromRGBO(214, 214, 214, 1),
                  ),
                  //color: Color.fromRGBO(214, 214, 214, 1),
                  width: context.screenWidth * 0.94,
                  height: context.screenHeight * 0.64,
                  child: Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SOLUÇÕES PARA SUA EMPRESA",
                              style: TextStyles.i.textExtraBold
                                  .copyWith(fontSize: 18)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 70,
                                width: 180,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_Industry.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 180,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_Business.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 70,
                                width: 180,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_GasStation.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 180,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_website.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 180,
                                height: 60,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_e-fiscal.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Container(
                                width: 180,
                                height: 60,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/images/banner_SeuSoftware.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: GenericBtn(
                              width: context.percentWidth(.7),
                              height: 35,
                              label: "ACESSAR",
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ValidatorPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                          //SizedBox(height: context.percentHeight(0.02)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
