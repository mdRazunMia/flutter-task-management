// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  margin: const EdgeInsets.only(left: 103, right: 103),
                  child: const Text(
                    "Signup your account",
                    style: TextStyle(
                      fontSize: 22,
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xF5F5F5),
                        ),
                        child: InkWell(
                          onTap: null,
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
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xF5F5F5),
                        ),
                        child: InkWell(
                          onTap: null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/linkdin.svg"),
                              const SizedBox(
                                width: 20,
                              ),
                              Text("Login with Linkedin"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xF5F5F5),
                        ),
                        child: InkWell(
                          onTap: null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Forget password"),
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
