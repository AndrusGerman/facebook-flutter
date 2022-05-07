import 'package:facebook_flutter/start_router/controller/app_bar_notifier.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_icons_blue_bar.dart';
import 'package:facebook_flutter/start_router/ui/widgets/user_circle_img.dart';
import 'package:flutter/material.dart';

class AppBarIconProfileButton extends StatefulWidget {
  final int index;
  final AppBarClickMenuNotifier appBarNotifier;
  const AppBarIconProfileButton({
    Key? key,
    required this.index,
    required this.appBarNotifier,
  }) : super(key: key);

  @override
  State<AppBarIconProfileButton> createState() =>
      _AppBarIconProfileButtonState();
}

class _AppBarIconProfileButtonState extends State<AppBarIconProfileButton> {
  late bool isPressed = false;

  @override
  void initState() {
    widget.appBarNotifier.addListener(() {
      if ((widget.appBarNotifier.indexMenu != widget.index) && isPressed) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isPressed = widget.index == widget.appBarNotifier.indexMenu;

    const blueBar = AppBarIconstBlueBar();
    const blackColor = Color.fromARGB(255, 121, 121, 121);

    const img =
        UserCircleIMG(assets: AssetImage("assets/img/profile.png"), size: 45);

    final profileImg = Container(
      child: img,
      decoration: BoxDecoration(
        border: Border.all(
          color: isPressed ? Colors.blue : blackColor,
          width: 2,
        ),
        shape: BoxShape.circle,
        color: isPressed ? Colors.blue : blackColor,
      ),
      margin: EdgeInsets.symmetric(vertical: 2.4),
    );

    final menuProfileBadget = Container(
      child: Icon(
        Icons.menu,
        color: isPressed ? Colors.blue : Colors.white,
        size: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: isPressed ? Colors.blue : Colors.white,
          width: 1,
        ),
        shape: BoxShape.circle,
        color: isPressed ? Colors.white : blackColor,
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
          isPressed ? blueBar : Container(),
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

  onPressed() {
    if (isPressed) {
      return;
    }
    setState(() {});
    widget.appBarNotifier.setMenuClick(widget.index);
  }
}
