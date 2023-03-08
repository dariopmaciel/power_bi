
import 'package:flutter/material.dart';
import 'package:power_bi/app/core/ui/styles/colors_app.dart';
import 'package:power_bi/app/core/ui/styles/text_styles.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get i {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get prymaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.i.primary,
        textStyle: TextStyles.i.textButtomLabel,
      );
}

//extenção para enviar as os estilos para as BuildContexts
extension AppStylesExtensions on BuildContext {
  AppStyles get appStyles => AppStyles.i;
}
