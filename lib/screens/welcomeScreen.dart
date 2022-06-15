import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/screens/splashScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => CalendarWidget(title: 'Calendar')));
      Get.toNamed("/homeScreen");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     // systemNavigationBarColor: Colors.yellow,
    //     statusBarColor: Color.fromRGBO(90, 188, 247, 1),
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //     systemNavigationBarColor: Color.fromRGBO(90, 188, 247, 1),
    //     //color set to transperent or set your own color
    //   ),
    // );

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        // child: Image.asset(
        //   "assets/images/splash_screen.png",
        //   height: height,
        //   width: width,
        //   fit: BoxFit.fill,
        // ),
        child: const SplashScreen(),
      ),
    );
  }
}
