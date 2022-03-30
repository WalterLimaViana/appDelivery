import 'package:animated_splash_screen/animated_splash_screen.dart';
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
            '/': (context) => AnimatedSplashScreen(
                splash: Icons.pets,
                duration: 3000,
                splashTransition: SplashTransition.rotationTransition,
                backgroundColor: Colors.lightBlue,
                // Center(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         height: 100,
                //         width: 100,
                //         color: Colors.blueAccent,
                //       ),
                //       Container(
                //           child: Text('Splash Screen',
                //               style: TextStyle(
                //                   fontSize: 24, fontWeight: FontWeight.bold))),
                //     ],
                //   ),
                // ),
                nextScreen: LoginPage()),
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/produtos': (context) => ProdutosPage(),
          },
        );
      },
    );
  }
}
