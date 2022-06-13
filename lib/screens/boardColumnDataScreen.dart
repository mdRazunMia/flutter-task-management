import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BoardColumnDataScreen extends StatelessWidget {
  BoardColumnDataScreen({Key? key}) : super(key: key);
  bool singleBoard = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: singleBoard
          ? AppBar(
              elevation: 0.0,
              leading: Container(
                height: 10,
                width: 10,
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                padding: const EdgeInsets.all(12),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 26.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              title: Container(
                height: 30,
                width: 100,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "Column A",
                  style: TextStyle(
                    color: Color(0x44444444),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(197, 199, 211, 1),
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(197, 199, 211, 1),
                      size: 30,
                    ),
                  ),
                ),
              ],
            )
          : AppBar(
              elevation: 0.0,
              leading: Container(
                height: 10,
                width: 10,
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                padding: const EdgeInsets.all(12),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 26.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              title: Container(
                height: 30,
                width: 100,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "Column A",
                  style: TextStyle(
                    color: Color(0x44444444),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            content: Form(
                              child: Container(
                                height: 177,
                                margin: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 57,
                                      margin: const EdgeInsets.all(
                                        10,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Create column',
                                          labelStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          hintText: "Write column",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          hintStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 120,
                                            margin: const EdgeInsets.only(
                                              left: 30,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: const Text(
                                                "Reset",
                                                style: TextStyle(
                                                  color: Color(0x44444444),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            margin: const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: const Text(
                                                "Save",
                                                style: TextStyle(
                                                  color: Color(0x44444444),
                                                  fontSize: 16,
                                                ),
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
                          );
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/images/plus_board.svg",
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(197, 199, 211, 1),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 96,
                  width: width,
                  padding: const EdgeInsets.only(
                    top: 33,
                  ),
                  color: const Color(0xE5E5E5E5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              color: Color(0x44444444),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 120,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Text(
                            "Move",
                            style: TextStyle(
                              color: Color(0x44444444),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
