import 'package:flutter/material.dart';
import 'package:school/consts/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: bgDarkColor,
        child: DrawerHeader(
          child: ListView(),
        ));
  }
}
