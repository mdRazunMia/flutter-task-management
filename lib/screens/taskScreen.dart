// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool selectedMode = true;

  int selectedBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    void _boardColumnDataModelBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color(0x44444444),
        builder: (context) {
          return Container(
            height: height - 99,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(top: 20, left: 28),
                        child: SvgPicture.asset(
                          color: const Color.fromRGBO(197, 199, 211, 1),
                          "assets/images/board.svg",
                          height: 24,
                          width: 18,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 19,
                        width: 96,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: const Text(
                          "Column A",
                          style: TextStyle(
                            color: Color(0x44444444),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: width,
                  color: const Color.fromRGBO(235, 235, 235, 1),
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: 401,
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/boardColumnDataScreen");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/board.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Column A",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // _boardColumnModelBottomSheet();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/board.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Column B",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
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
              ],
            ),
          );
        },
      );
    }

    void _boardColumnModelBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color(0x44444444),
        builder: (context) {
          return Container(
            height: height - 99,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(top: 20, left: 28),
                        child: SvgPicture.asset(
                          color: const Color.fromRGBO(197, 199, 211, 1),
                          "assets/images/board.svg",
                          height: 24,
                          width: 18,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 19,
                        width: 96,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: const Text(
                          "Board A",
                          style: TextStyle(
                            color: Color(0x44444444),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: width,
                  color: const Color.fromRGBO(235, 235, 235, 1),
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: 401,
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _boardColumnDataModelBottomSheet();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/board.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Column A",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // _boardColumnModelBottomSheet();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/board.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Column B",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
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
              ],
            ),
          );
        },
      );
    }

    void _showBoardBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color(0x44444444),
        builder: (context) {
          return Container(
            height: height - 99,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(top: 20, left: 28),
                        child: SvgPicture.asset(
                          color: const Color.fromRGBO(197, 199, 211, 1),
                          "assets/images/board.svg",
                          height: 24,
                          width: 18,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 19,
                        width: 96,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: const Text(
                          "Board Name",
                          style: TextStyle(
                            color: Color(0x44444444),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: width,
                  color: const Color.fromRGBO(235, 235, 235, 1),
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: 401,
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _boardColumnModelBottomSheet();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/board.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Board A",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
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
              ],
            ),
          );
        },
      );
    }

    void _showGroupBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color(0x44444444),
        builder: (context) {
          return Container(
            height: height - 99,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(top: 20, left: 28),
                        child: SvgPicture.asset(
                          color: const Color.fromRGBO(197, 199, 211, 1),
                          "assets/images/group.svg",
                          height: 24,
                          width: 18,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 19,
                        width: 96,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: const Text(
                          "Group Name",
                          style: TextStyle(
                            color: Color(0x44444444),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: width,
                  color: const Color.fromRGBO(235, 235, 235, 1),
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: 401,
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // _boardColumnModelBottomSheet();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/group.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 19,
                                  width: width - 97,
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: const Text(
                                    "Group A",
                                    style: TextStyle(
                                      color: Color(0x44444444),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
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
              ],
            ),
          );
        },
      );
    }

    void _showBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color(0x44444444),
        builder: (context) {
          return Container(
            height: height - 99,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: width,
                  margin: const EdgeInsets.only(
                    top: 36,
                    left: 28,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _showGroupBottomSheet();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            color: const Color.fromRGBO(197, 199, 211, 1),
                            "assets/images/group.svg",
                            height: 24,
                            width: 18,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 19,
                          width: 96,
                          margin: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: const Text(
                            "Move to group",
                            style: TextStyle(
                              color: Color(0x44444444),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: 40,
                  width: width,
                  margin: const EdgeInsets.only(
                    top: 36,
                    left: 28,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _showBoardBottomSheet();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 28,
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            color: const Color.fromRGBO(197, 199, 211, 1),
                            "assets/images/board.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 19,
                          width: 96,
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: const Text(
                            "Move to Board",
                            style: TextStyle(
                              color: Color(0x44444444),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: 40,
                  width: width,
                  margin: const EdgeInsets.only(
                    top: 36,
                    left: 28,
                  ),
                  child: GestureDetector(
                    onTap: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 23.84,
                          width: 19,
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            color: const Color.fromRGBO(197, 199, 211, 1),
                            "assets/images/delete.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 19,
                          width: 96,
                          margin: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              color: Color(0x44444444),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: selectedMode
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
                  child: SvgPicture.asset(
                    "assets/images/cross.svg",
                    height: 10,
                    width: 10,
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
                  "Select 2",
                  style: TextStyle(
                    color: Color(0x44444444),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 24),
                  padding: const EdgeInsets.only(
                    right: 5.0,
                    top: 5.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print("Search icon has been pressed.");
                    },
                    child: SvgPicture.asset("assets/images/humber.svg"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _showBottomSheet();
                    },
                    child: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(197, 199, 211, 1),
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          : AppBar(
              elevation: 0.0,
              leading: Padding(
                padding: const EdgeInsets.only(right: 20.0),
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
              title: const Text(
                "Tasks",
                style: TextStyle(
                  color: Color(0x44444444),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      print("Search icon has been pressed.");
                    },
                    child: const Icon(
                      Icons.search,
                      size: 26.0,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                height: height,
                width: width,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60,
                      width: width,
                      margin: const EdgeInsets.all(
                        5,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: const Text(
                                "Hello Hello Hello Hello Hello Hello Hello Hello  Hello Hello Hello Hello  Hello Hello Hello Hello  Hello Hello Hello Hello  Hello Hello Hello Hello  Hello Hello Hello Hello HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 100,
              width: width,
              decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2.0,
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 195,
                                margin: const EdgeInsets.only(
                                  left: 5.0,
                                ),
                                child: const Text("Add a task"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          margin: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Add a task',
                              contentPadding:
                                  EdgeInsets.only(top: 12, left: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset("assets/images/up_arrow.svg"),
                      iconSize: 70,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/task_bottom.svg",
              height: 24,
              width: 15,
            ),
            label: 'All Tasks',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/board_bottom.svg",
              height: 24,
              width: 15,
            ),
            label: 'Boards',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/group_bottom.svg",
              height: 24,
              width: 15,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/calender_bottom.svg",
              height: 24,
              width: 15,
            ),
            label: 'Calender',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            selectedBottomNavigationIndex = index;
            if (selectedBottomNavigationIndex == 0) {
              Get.toNamed("/taskScreen");
            } else if (selectedBottomNavigationIndex == 1) {
              Get.toNamed("/boardListScreen");
            } else if (selectedBottomNavigationIndex == 2) {
              Get.toNamed("/groupListScreen");
            }
          });
        },
      ),
    );
  }
}
