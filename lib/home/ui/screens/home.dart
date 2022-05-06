import 'package:facebook_flutter/home/ui/widgets/create_post_home.dart';
import 'package:facebook_flutter/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AppBarAllContent(),
        HomePostWidget(),
      ]),
    );
  }
}
