import 'package:flutter/material.dart';
import 'package:projeto_curso/app_controller.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'produtos_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            //OBrightness abaixo é um ternário que mostra como deve ser a mudança
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          //Instanciando as rotas:
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/produtos': (context) => ProdutosPage(),
          },
        );
      },
    );
  }
}
