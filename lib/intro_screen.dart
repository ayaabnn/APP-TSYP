import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:projectwidget22/home.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w400,
          color: Colors.orange[900]),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.orange),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
            0.1,
            0.5,
            0.7,
            0.9
          ],
              colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
          ])),
    );

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: IntroductionScreen(
            globalBackgroundColor: Colors.orangeAccent,
            pages: [
              PageViewModel(
                title: "IEEE SIGHT ISIMM SB",
                body: "#we_have_our_sight_we_have_our_vision",
                image: introImage('assets/images/sight.png'),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "IEEE SIGHT ISIMM SB",
                body: "#we_have_our_sight_we_have_our_vision",
                image: introImage('assets/images/2.png'),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "TSYP11 SIGHT CHALLENGE 🔥",
                body: "#we_have_our_sight_we_have_our_vision",
                image: introImage(
                  'assets/images/3.png',
                ),
                decoration: pageDecoration,
              ),
            ],
            onDone: () => goHomePage(context),
            onSkip: () => goHomePage(context),
            showSkipButton: true,
            nextFlex: 0,
            skip: Text(
              'cancel',
              style: TextStyle(color: Colors.orange[900]),
            ),
            next: Icon(Icons.arrow_forward, color: Colors.orange[900]),
            done: Text(
              'Getting started',
              style: TextStyle(
                  color: Colors.orange[900], fontWeight: FontWeight.w400),
            ),
            dotsDecorator: const DotsDecorator(
                size: Size(10.0, 10.0),
                color: Colors.orange,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                )),
          ),
        ),
      ),
    );
  }
}

void goHomePage(context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
    return MyHomePage();
  }), (Route<dynamic> route) => false);
}

Widget introImage(String AssetName) {
  return Align(
    child: Image.asset(
      '$AssetName',
      width: 700,
      height: 700,
      fit: BoxFit.fill,
    ),
    alignment: Alignment.center,
  );
}
