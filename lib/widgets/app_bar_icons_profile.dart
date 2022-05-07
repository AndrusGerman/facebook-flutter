import 'package:facebook_flutter/widgets/app_bar_icons_blue_bar.dart';
import 'package:facebook_flutter/widgets/app_bar_notifier.dart';
import 'package:facebook_flutter/widgets/user_circle_img.dart';
import 'package:flutter/material.dart';

class AppBarIconProfileButton extends StatefulWidget {
  late bool isPressed;
  final int index;
  final AppBarClickNotifier appBarNotifier;
  AppBarIconProfileButton({
    Key? key,
    required this.index,
    required this.appBarNotifier,
    this.isPressed = false,
  }) : super(key: key);

  @override
  State<AppBarIconProfileButton> createState() =>
      _AppBarIconProfileButtonState();
}

class _AppBarIconProfileButtonState extends State<AppBarIconProfileButton> {
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
    const blueBar = AppBarIconstBlueBar();
    const blackColor = Color.fromARGB(255, 121, 121, 121);

    final img =
        UserCircleIMG(assets: AssetImage("assets/img/profile.png"), size: 45);

    final profileImg = Container(
      child: img,
      decoration: BoxDecoration(
        border: Border.all(
          color: blackColor,
          width: 2,
        ),
        shape: BoxShape.circle,
        color: blackColor,
      ),
    );

    final menuProfileBadget = Container(
      child: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        shape: BoxShape.circle,
        color: blackColor,
      ),
      //alignment: Alignment.center,
    );

    final menuProfile = Container(
      child: menuProfileBadget,
      alignment: const Alignment(0.4, 1),
    );

    final content = Container(
      height: 60,
      child: Stack(
        children: [
          widget.isPressed ? blueBar : Container(),
          Container(
            alignment: Alignment.center,
            child: Stack(children: [
              profileImg,
              menuProfile,
            ]),
            padding: const EdgeInsets.all(3),
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
    if (widget.isPressed) {
      return;
    }
    setPressedMode(true);
    widget.appBarNotifier.setMenuClick(widget.index);
  }
}
