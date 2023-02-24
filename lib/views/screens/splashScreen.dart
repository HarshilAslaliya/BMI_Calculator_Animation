import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<double> opacityAnimation;

  @override
  void initState() {
    Timer(Duration(milliseconds: 4000), () {
      Navigator.pushReplacementNamed(context, 'homepage');
    });

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      animationController,
    );

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090E21),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: opacityAnimation,
              child: Column(
                children: [
                  Text(
                    "BMI",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Text(
                    "C A L C U L A T O R",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height:50,),
                  AnimatedTextKit(repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText(". . . . .",speed: Duration(milliseconds: 300),
                          textStyle: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
