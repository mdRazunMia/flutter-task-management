import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/screens/boardItemsScreen.dart';
import 'package:task_management/screens/boardListScreen.dart';

import './screens/homeScreen.dart';
import './screens/signupScreen.dart';
import './screens/taskScreen.dart';
import 'screens/boardColumnDataScreen.dart';
import 'screens/boardScreen.dart';
import 'screens/groupItemScreen.dart';
import 'screens/groupListScreen.dart';
import 'screens/groupScreen.dart';
import 'screens/splashScreen.dart';
import 'screens/subGroupItemsScreen.dart';
import 'screens/welcomeScreen.dart';

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
      // initialRoute: "/",
      // initialRoute: "/splashScreen",
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/signupScreen", page: () => const SignupScreen()),
        GetPage(name: "/taskScreen", page: () => TaskScreen()),
        GetPage(name: "/groupScreen", page: () => const GroupScreen()),
        GetPage(name: "/boardScreen", page: () => const BoardScreen()),
        GetPage(
            name: "/boardColumnDataScreen",
            page: () => BoardColumnDataScreen()),
        GetPage(name: "/boardListScreen", page: () => const BoardListScreen()),
        GetPage(name: "/groupListScreen", page: () => GroupListScreen()),
        GetPage(name: "/groupItemsScreen", page: () => GroupItemsScreen()),
        GetPage(
            name: "/subGroupItemsScreen", page: () => SubGroupItemsScreen()),
        GetPage(name: "/splashScreen", page: () => const SplashScreen()),
        GetPage(
            name: "/boardItemsScreen", page: () => const BoardItemsScreen()),
      ],
      home: const WelcomeScreen(),
    );
  }
}
