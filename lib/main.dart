import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './screens/homeScreen.dart';
import './screens/signupScreen.dart';
import './screens/taskScreen.dart';
import 'screens/boardScreen.dart';
import 'screens/groupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/signupScreen", page: () => const SignupScreen()),
        GetPage(name: "/taskScreen", page: () => const TaskScreen()),
        GetPage(name: "/groupScreen", page: () => const GroupScreen()),
        GetPage(name: "/boardScreen", page: () => const BoardScreen()),
      ],
    );
  }
}
