import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BoardItemsScreen extends StatefulWidget {
  const BoardItemsScreen({Key? key}) : super(key: key);

  @override
  State<BoardItemsScreen> createState() => _BoardItemsScreenState();
}

class _BoardItemsScreenState extends State<BoardItemsScreen> {
  String? selectedValue;
  int selectedBottomNavigationIndex = 0;
  bool isGroup = false;
  final List<String> Boards = [
    'Board A',
    'Board B',
    'Board C',
    'Board D',
    'Board E',
    'Board F',
    'Board G',
    'Board H',
    'Board I',
    'Board J',
    'Board K',
    'Board L',
    'Board M',
    'Board N',
    'Board O',
    'Board P',
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: SpeedDial(
        direction: SpeedDialDirection.left,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.blue,
            child: Container(
              color: Colors.blue,
              child: SvgPicture.asset("assets/images/group.svg"),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    content: Form(
                      child: Container(
                        height: 250,
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
                                  labelText: 'Create group',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  hintText: "Write group",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    child: const Checkbox(
                                      onChanged: null,
                                      value: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    child: const Text("Nested"),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              margin: const EdgeInsets.only(
                                top: 10,
                                right: 25,
                              ),
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Select a item',
                                  style: TextStyle(fontSize: 14),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black45,
                                ),
                                iconSize: 30,
                                buttonHeight: 60,
                                buttonPadding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                items: Boards.map(
                                    (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        )).toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select item';
                                  }
                                },
                                onChanged: (value) {
                                  //Do something when changing the item if you want.
                                },
                                onSaved: (value) {
                                  selectedValue = value.toString();
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                      ),
                                      child: const Text(
                                        "Reset",
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
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                      ),
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
          ),
          SpeedDialChild(
            backgroundColor: Colors.blue,
            child: Container(
              color: Colors.blue,
              child: SvgPicture.asset("assets/images/board.svg"),
            ),
            onTap: () {
              // Get.toNamed("/boardScreen");
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    content: Form(
                      child: Container(
                        height: 250,
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
                                  labelText: 'Create board',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  hintText: "Write board",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    child: const Checkbox(
                                      onChanged: null,
                                      value: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    child: const Text("Nested"),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              margin: const EdgeInsets.only(
                                top: 10,
                                right: 25,
                              ),
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Select a item',
                                  style: TextStyle(fontSize: 14),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black45,
                                ),
                                iconSize: 30,
                                buttonHeight: 60,
                                buttonPadding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                items: Boards.map(
                                    (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        )).toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select item';
                                  }
                                },
                                onChanged: (value) {
                                  //Do something when changing the item if you want.
                                },
                                onSaved: (value) {
                                  selectedValue = value.toString();
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                      ),
                                      child: const Text(
                                        "Reset",
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
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                      ),
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
          ),
          SpeedDialChild(
            backgroundColor: Colors.blue,
            child: Container(
              color: Colors.blue,
              child: SvgPicture.asset("assets/images/task.svg"),
            ),
            onTap: () {
              Get.toNamed("/taskScreen");
            },
          ),
        ],
        child: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(
            top: 15,
            left: 10,
          ),
          child: SvgPicture.asset(
            "assets/images/plus.svg",
            height: 40,
            width: 40,
          ),
        ),
      ),
      appBar: AppBar(
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
          width: 200,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          padding: const EdgeInsets.all(5),
          child: const Text(
            "Board 1",
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
            margin: const EdgeInsets.only(right: 24.0),
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
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 40,
                    width: width,
                    margin: const EdgeInsets.only(
                      top: 5,
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Get.toNamed("/subGroupItemsScreen");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          isGroup
                              ? Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                    color:
                                        const Color.fromRGBO(197, 199, 211, 1),
                                    "assets/images/group.svg",
                                    height: 24,
                                    width: 18,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: null,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
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
                                ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 19,
                            width: 260,
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "task ${index + 1}",
                              style: const TextStyle(
                                color: Color(0x44444444),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("Pressed more vert.");
                              },
                              child: const Icon(
                                Icons.more_vert,
                                color: Color.fromRGBO(197, 199, 211, 1),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 18,
            ),
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
        currentIndex: selectedBottomNavigationIndex,
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
