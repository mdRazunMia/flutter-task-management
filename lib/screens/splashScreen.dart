import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: const Color.fromRGBO(90, 188, 247, 1),
            ),
            Positioned(
              left: width - 100,
              top: 1,
              child: Container(
                height: 100,
                width: 100,
                child: SvgPicture.asset(
                  "assets/images/splash_dot.svg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 79,
              child: SizedBox(
                height: 100,
                width: 200,
                child: SvgPicture.asset(
                  "assets/images/splash_logo.svg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 280,
                width: width,
                child: SvgPicture.asset(
                  "assets/images/wave.svg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                child: SvgPicture.asset(
                  "assets/images/circle_up.svg",
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
