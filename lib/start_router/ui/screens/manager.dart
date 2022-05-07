import 'package:facebook_flutter/home/ui/screens/home.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class StartRouteManager extends StatelessWidget {
  const StartRouteManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        HomeScrollAll(),
        AppBarAllContent(),
      ]),
    );
  }
}
