// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) {
              return SimpleDialog(
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          child: IconButton(
                            icon: SvgPicture.asset("assets/images/task.svg"),
                            onPressed: null,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 40,
                          child: IconButton(
                            icon: SvgPicture.asset("assets/images/board.svg"),
                            onPressed: null,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 40,
                          child: IconButton(
                            icon: SvgPicture.asset("assets/images/group.svg"),
                            onPressed: null,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(top: 20, left: 5),
          child: SvgPicture.asset(
            "assets/images/new_plus.svg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 170,
              ),
              Container(
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  "assets/images/home_illustration.svg",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 20,
                width: 68,
                child: const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                height: 20,
                width: 184,
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                child: const Text(
                  "Please add a task",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
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
        onTap: null,
      ),
    );
  }
}
