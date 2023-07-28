import 'package:educational_app/main/mymainpage.dart';
import 'package:flutter/material.dart';
import 'package:educational_app/drawer/customdrawer.dart';

class DrawerLayout extends StatelessWidget {
  static const String tag = '/drawerScreen.dart';
  const DrawerLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          MyMainPage(),
          CustomDrawer(),
        ],
      ),
    );
  }
}
