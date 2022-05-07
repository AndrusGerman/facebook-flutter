import 'package:flutter/material.dart';

class AppBarIconstBlueBar extends StatelessWidget {
  const AppBarIconstBlueBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          )),
    );
  }
}
