import 'package:facebook_flutter/widgets/app_bar_notifier.dart';
import 'package:flutter/material.dart';

class AppBarIconsContainer extends StatefulWidget {
  const AppBarIconsContainer({Key? key}) : super(key: key);

  @override
  State<AppBarIconsContainer> createState() => _AppBarIconsContainerState();
}

class _AppBarIconsContainerState extends State<AppBarIconsContainer> {
  late AppBarClickNotifier _appBarNotifier;
  @override
  void initState() {
    _appBarNotifier = AppBarClickNotifier();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _appBarNotifier.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBarIconButton(
            iconPressed: Icons.home,
            iconDefault: Icons.home_outlined,
            isPressed: true,
            index: 0,
            appBarNotifier: _appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.movie,
            iconDefault: Icons.movie_outlined,
            index: 1,
            appBarNotifier: _appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.shop,
            iconDefault: Icons.shop_outlined,
            index: 2,
            appBarNotifier: _appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.place,
            iconDefault: Icons.place_outlined,
            index: 3,
            appBarNotifier: _appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.notifications,
            iconDefault: Icons.notifications_outlined,
            index: 4,
            appBarNotifier: _appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.person,
            iconDefault: Icons.person_outlined,
            index: 5,
            appBarNotifier: _appBarNotifier,
          ),
        ],
      ),
    );
    return Container(
      margin: const EdgeInsets.only(top: 110),
      child: content,
    );
  }
}

class AppBarIconButton extends StatefulWidget {
  final IconData iconDefault;
  final IconData iconPressed;
  late bool isPressed;
  final int index;
  final AppBarClickNotifier appBarNotifier;
  AppBarIconButton({
    Key? key,
    required this.iconDefault,
    required this.iconPressed,
    required this.index,
    required this.appBarNotifier,
    this.isPressed = false,
  }) : super(key: key);

  @override
  State<AppBarIconButton> createState() => _AppBarIconButtonState();
}

class _AppBarIconButtonState extends State<AppBarIconButton> {
  @override
  void initState() {
    widget.appBarNotifier.addListener(() {
      if ((widget.appBarNotifier.indexMenu != widget.index) &&
          widget.isPressed) {
        setPressedMode(false);
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      widget.isPressed ? widget.iconPressed : widget.iconDefault,
      size: 32,
      color: widget.isPressed ? Colors.blue : Colors.black,
    );

    final blueBar = Container(
      margin: const EdgeInsets.only(top: 36),
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          )),
    );

    final content = Container(
      height: 60,
      child: Stack(
        children: [
          widget.isPressed ? blueBar : Container(),
          Container(
            alignment: Alignment.center,
            child: icon,
          ),
        ],
      ),
    );
    return Expanded(
        child: InkWell(
      onTap: onPressed,
      child: content,
    ));
  }

  setPressedMode(bool mode) {
    setState(() {
      widget.isPressed = mode;
    });
  }

  onPressed() {
    setPressedMode(!widget.isPressed);
    widget.appBarNotifier.setMenuClick(widget.index);
  }
}
