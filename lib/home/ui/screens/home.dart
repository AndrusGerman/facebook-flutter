import 'package:facebook_flutter/home/ui/widgets/create_post_home.dart';
import 'package:facebook_flutter/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        HomeScrollAll(),
        AppBarAllContent(),
      ]),
    );
  }
}

class HomeScrollAll extends StatelessWidget {
  const HomeScrollAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomePostWidget(),
        Container(
          width: 50,
          height: 1000,
          color: Colors.white,
        )
      ],
    );
  }
}
