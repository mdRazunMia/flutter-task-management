import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BoardListScreen extends StatelessWidget {
  const BoardListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            "Board List",
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
                        // _showGroupBottomSheet();
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
                            width: 250,
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Board ${index + 1}",
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
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
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
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
