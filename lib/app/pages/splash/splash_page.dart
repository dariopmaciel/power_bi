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
                              Image.asset("assets/images/baner-01.png",
                                  width: 180, height: 70),
                              Image.asset("assets/images/baner-03.png",
                                  width: 180, height: 70),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("assets/images/baner-02.png",
                                  width: 180, height: 70),
                              Image.asset("assets/images/baner-04.png",
                                  width: 180, height: 70),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("assets/images/baner-06.png",
                                  width: 180, height: 70),
                              Image.asset("assets/images/baner-05.png",
                                  width: 180, height: 70),
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

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:power_bi/pages/home/home_page.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 1,
//       ),
//       body: Container(
//         child: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HomePage(),
//                 ),
//               );
//             },
//             child: Text("HOME PAGE"),
//           ),
//         ),
//       ),
//     );
//   }
// }
