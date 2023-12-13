import 'dart:async';

import 'package:flutter/material.dart';

bool shouldButtonEnabled = true;
void disabledButton() {
  shouldButtonEnabled = false;
  Timer(const Duration(seconds: 3), () => shouldButtonEnabled = true);
}

SnackBar mySnackBar(String errorMessage, String messageDetail) {
  return SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
          padding: const EdgeInsets.all(16),
          height: 90,
          decoration: const BoxDecoration(
              color: Color(0xFFAF2655),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                errorMessage,
                style: const TextStyle(fontFamily: 'Young', fontSize: 20),
              ),
              Text(
                messageDetail,
                style: const TextStyle(fontFamily: 'Young', fontSize: 15),
              ),
            ],
          )));
}
