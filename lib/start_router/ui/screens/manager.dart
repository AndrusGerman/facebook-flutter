import 'package:facebook_flutter/home/ui/screens/home.dart';
import 'package:facebook_flutter/menu/ui/screens/menu.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

import '../../controller/app_bar_notifier.dart';

class StartRouteManager extends StatefulWidget {
  StartRouteManager({Key? key}) : super(key: key);

  @override
  State<StartRouteManager> createState() => _StartRouteManagerState();
}

class _StartRouteManagerState extends State<StartRouteManager> {
  late AppBarClickMenuNotifier appBarNotifier;

  @override
  void initState() {
    appBarNotifier = AppBarClickMenuNotifier();
    super.initState();
  }

  @override
  void dispose() {
    appBarNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        StartRouteManagerRoutView(
          appBarNotifier: appBarNotifier,
        ),
        AppBarAllContent(appBarNotifier: appBarNotifier),
      ]),
    );
  }
}

class StartRouteManagerRoutView extends StatefulWidget {
  final AppBarClickMenuNotifier appBarNotifier;
  const StartRouteManagerRoutView({Key? key, required this.appBarNotifier})
      : super(key: key);

  @override
  State<StartRouteManagerRoutView> createState() =>
      _StartRouteManagerRoutViewState();
}

class _StartRouteManagerRoutViewState extends State<StartRouteManagerRoutView> {
  final pages = [
    const HomeScrollAll(),
    Container(),
    Container(),
    Container(),
    Container(),
    const MenuScreen(),
  ];

  @override
  void initState() {
    widget.appBarNotifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return pages[widget.appBarNotifier.indexMenu];
  }
}
