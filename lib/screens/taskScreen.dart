import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: height,
                width: width,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60,
                      width: width,
                      margin: EdgeInsets.all(
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
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.greenAccent,
                                  offset: Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: const Text("Hello"),
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
                            obscureText: true,
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
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_circle_up,
                      ),
                      iconSize: 50,
                      color: Colors.green,
                      splashColor: Colors.purple,
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
        onTap: null,
      ),
    );
  }
}
