// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xFFFFFFFF),
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -8,
                        child: Container(
                          height: 84,
                          width: 90,
                          child: SvgPicture.asset(
                            "assets/images/signup_circle.svg",
                            height: 84,
                            width: 90,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        child: Container(
                          height: 84,
                          width: 90,
                          child: SvgPicture.asset(
                            "assets/images/Frame.svg",
                            height: 44,
                            width: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 22,
                  margin: const EdgeInsets.only(
                    left: 360,
                  ),
                  child: const Text(
                    "Skip",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 170,
                  width: 301,
                  margin: const EdgeInsets.only(left: 37, right: 37),
                  child: SvgPicture.asset(
                    "assets/images/signup_illustration.svg",
                    height: 170,
                    width: 301,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 204,
                  height: 30,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 103, right: 103),
                  child: const Text(
                    "Signup your account",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0x44444444),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 319,
                  width: 343,
                  margin: const EdgeInsets.only(left: 35, right: 16),
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Container(
                              height: 20,
                              width: 343,
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              margin: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: const Text(
                                "Write your email or phone",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 30,
                              width: 343,
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Enter email or phone number',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      width: 5,
                                      // style: BorderStyle.none,
                                      color: Color(0x5ABCF7),
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 12, left: 10),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 343,
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              margin: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: const Text(
                                "Write your password",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 30,
                              width: 343,
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Enter your password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      width: 5,
                                      color: Color(0x5ABCF7),
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 12, left: 10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text('Signup'),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: null,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xF9F9F9F9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/google_icon.svg"),
                              const SizedBox(
                                width: 20,
                              ),
                              Text("Login with Google"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: null,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xF9F9F9F9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/linkdin.svg"),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text("Login with Linkedin"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => {
                          showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                actions: [],
                                insetPadding: const EdgeInsets.only(
                                  top: 100,
                                ),
                                title: const Text(
                                  "Forget your password?",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0x44444444),
                                  ),
                                ),
                                content: Container(
                                  height: 150,
                                  width: 300,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Form(
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                            top: 10,
                                            right: 10,
                                          ),
                                          child: Column(
                                            children: [
                                              const TextField(
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  hintText:
                                                      'Enter your Email or phone',
                                                  hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0x44444444),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                height: 40,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Get.back();
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.white,
                                                      ),
                                                      child: const Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0x44444444),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.black,
                                                      ),
                                                      onPressed: () {
                                                        Get.back();
                                                        showDialog(
                                                            context: context,
                                                            builder: (_) {
                                                              return AlertDialog(
                                                                insetPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  top: 100,
                                                                ),
                                                                title:
                                                                    const Text(
                                                                  "Submit OTP",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    color: Color(
                                                                        0x44444444),
                                                                  ),
                                                                ),
                                                                content:
                                                                    Container(
                                                                  height: 150,
                                                                  width: 300,
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Form(
                                                                        child:
                                                                            Container(
                                                                          margin:
                                                                              const EdgeInsets.only(
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                10,
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              SizedBox(
                                                                                height: 40,
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: const [
                                                                                    SizedBox(
                                                                                      width: 20,
                                                                                      height: 38,
                                                                                      child: TextField(
                                                                                        keyboardType: TextInputType.number,
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 20,
                                                                                      height: 38,
                                                                                      child: TextField(
                                                                                        keyboardType: TextInputType.number,
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 20,
                                                                                      height: 38,
                                                                                      child: TextField(
                                                                                        keyboardType: TextInputType.number,
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 20,
                                                                                      height: 38,
                                                                                      child: TextField(
                                                                                        keyboardType: TextInputType.number,
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 20,
                                                                                      height: 38,
                                                                                      child: TextField(
                                                                                        keyboardType: TextInputType.number,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 40,
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    ElevatedButton(
                                                                                      onPressed: () {
                                                                                        Get.back();
                                                                                      },
                                                                                      style: ElevatedButton.styleFrom(
                                                                                        primary: Colors.white,
                                                                                      ),
                                                                                      child: const Text(
                                                                                        "Cancel",
                                                                                        style: TextStyle(
                                                                                          color: Color(0x44444444),
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      width: 20,
                                                                                    ),
                                                                                    ElevatedButton(
                                                                                      onPressed: () {
                                                                                        Get.back();
                                                                                        showDialog(
                                                                                          context: context,
                                                                                          builder: (_) {
                                                                                            return AlertDialog(
                                                                                              insetPadding: const EdgeInsets.only(
                                                                                                top: 100,
                                                                                              ),
                                                                                              title: const Text(
                                                                                                "Set new password",
                                                                                                style: TextStyle(
                                                                                                  fontSize: 20,
                                                                                                  color: Color(0x44444444),
                                                                                                ),
                                                                                              ),
                                                                                              content: Container(
                                                                                                height: 150,
                                                                                                width: 300,
                                                                                                child: Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Form(
                                                                                                      child: Container(
                                                                                                        margin: const EdgeInsets.only(
                                                                                                          right: 10,
                                                                                                        ),
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            SizedBox(
                                                                                                              height: 70,
                                                                                                              child: Column(
                                                                                                                children: const [
                                                                                                                  SizedBox(
                                                                                                                    height: 30,
                                                                                                                    child: TextField(
                                                                                                                      keyboardType: TextInputType.text,
                                                                                                                      decoration: InputDecoration(
                                                                                                                        isDense: true,
                                                                                                                        hintText: 'Type new password',
                                                                                                                        hintStyle: TextStyle(
                                                                                                                          fontSize: 16,
                                                                                                                          color: Color(0x44444444),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  SizedBox(
                                                                                                                    height: 10,
                                                                                                                  ),
                                                                                                                  SizedBox(
                                                                                                                    height: 30,
                                                                                                                    child: TextField(
                                                                                                                      keyboardType: TextInputType.text,
                                                                                                                      decoration: InputDecoration(
                                                                                                                        isDense: true,
                                                                                                                        hintText: 'Confirm password',
                                                                                                                        hintStyle: TextStyle(
                                                                                                                          fontSize: 16,
                                                                                                                          color: Color(0x44444444),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            const SizedBox(
                                                                                                              height: 10,
                                                                                                            ),
                                                                                                            SizedBox(
                                                                                                              height: 40,
                                                                                                              child: Row(
                                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                children: [
                                                                                                                  ElevatedButton(
                                                                                                                    onPressed: () {
                                                                                                                      Get.back();
                                                                                                                    },
                                                                                                                    style: ElevatedButton.styleFrom(
                                                                                                                      primary: Colors.white,
                                                                                                                    ),
                                                                                                                    child: const Text(
                                                                                                                      "Cancel",
                                                                                                                      style: TextStyle(
                                                                                                                        color: Color(0x44444444),
                                                                                                                        fontSize: 16,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  const SizedBox(
                                                                                                                    width: 20,
                                                                                                                  ),
                                                                                                                  ElevatedButton(
                                                                                                                    onPressed: () {
                                                                                                                      print("This is submitted password");
                                                                                                                    },
                                                                                                                    style: ElevatedButton.styleFrom(
                                                                                                                      primary: Colors.white,
                                                                                                                    ),
                                                                                                                    child: const Text(
                                                                                                                      "submit",
                                                                                                                      style: TextStyle(
                                                                                                                        color: Color(0x44444444),
                                                                                                                        fontSize: 16,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      },
                                                                                      style: ElevatedButton.styleFrom(
                                                                                        primary: Colors.black,
                                                                                      ),
                                                                                      child: const Text(
                                                                                        "Submit",
                                                                                        style: TextStyle(
                                                                                          color: Color(0x85858585),
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            });
                                                      },
                                                      child: const Text(
                                                        "Reset",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0x85858585),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xF9F9F9F9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 20,
                              ),
                              Text("Forget Password"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
