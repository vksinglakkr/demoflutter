import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomeScreen.dart';
import 'package:page_transition/page_transition.dart';

//import 'pages/HomeScreen.dart';

class Splash extends StatelessWidget {
  final Color primaryColor, btnColor, btnFGColor;
  final int darkMode;
  const Splash(
      {key,
      required this.primaryColor,
      required this.darkMode,
      required this.btnColor,
      required this.btnFGColor});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: (darkMode == 0) ? Brightness.light : Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(this.btnColor),
              foregroundColor:
                  MaterialStateProperty.all<Color>(this.btnFGColor),
            ),
          ),
          buttonTheme: ButtonThemeData(buttonColor: Colors.blueAccent),
          textTheme: TextTheme(
            displayLarge:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyLarge: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            bodyMedium: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        home: SafeArea(
          child: AnimatedSplashScreen(
            duration: 2000,
            splash: const FlutterLogo(
              size: 600,
              style: FlutterLogoStyle.horizontal,
            ),
            nextScreen: HomeScreen(),
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
            backgroundColor: Colors.deepPurple,
          ),
        ));
//      debugShowCheckedModeBanner: false,
  }
}

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// //    return HomeScreen();
//     return MainTheme();
//   }
// }
