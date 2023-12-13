import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/consts/colors.dart';
import 'package:school/consts/style.dart';
import 'package:school/screens/loginsreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final title = 'Irvine Adventist School Gopalpur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => LoginScreen()));
                  },
                  icon: const Icon(
                    Icons.account_circle,
                    color: userAc,
                    size: 35,
                  )),
            ),
          ],
          title: Row(
            children: [
              Image.asset(
                'assets/images/ias.jpg',
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: style(
                  family: 'Young',
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(color: dashColor),
        ));
  }
}
