import 'package:facebook_flutter/start_router/controller/app_bar_notifier.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_icons_blue_bar.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_icons_profile.dart';
import 'package:flutter/material.dart';

class AppBarIconsContainer extends StatefulWidget {
  final AppBarClickMenuNotifier appBarNotifier;
  const AppBarIconsContainer({Key? key, required this.appBarNotifier})
      : super(key: key);

  @override
  State<AppBarIconsContainer> createState() => _AppBarIconsContainerState();
}

class _AppBarIconsContainerState extends State<AppBarIconsContainer> {
  @override
  Widget build(BuildContext context) {
    final content = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBarIconButton(
            iconPressed: Icons.home,
            iconDefault: Icons.home_outlined,
            index: 0,
            appBarNotifier: widget.appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.movie,
            iconDefault: Icons.movie_outlined,
            index: 1,
            appBarNotifier: widget.appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.shop,
            iconDefault: Icons.shop_outlined,
            index: 2,
            appBarNotifier: widget.appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.place,
            iconDefault: Icons.place_outlined,
            index: 3,
            appBarNotifier: widget.appBarNotifier,
          ),
          AppBarIconButton(
            iconPressed: Icons.notifications,
            iconDefault: Icons.notifications_outlined,
            index: 4,
            appBarNotifier: widget.appBarNotifier,
          ),
          AppBarIconProfileButton(
            index: 5,
            appBarNotifier: widget.appBarNotifier,
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
  late bool isPressed = false;
  final int index;
  final AppBarClickMenuNotifier appBarNotifier;
  AppBarIconButton({
    Key? key,
    required this.iconDefault,
    required this.iconPressed,
    required this.index,
    required this.appBarNotifier,
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
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.isPressed = widget.appBarNotifier.indexMenu == widget.index;
    final icon = Icon(
      widget.isPressed ? widget.iconPressed : widget.iconDefault,
      size: 26,
      color:
          widget.isPressed ? Colors.blue : Color.fromARGB(255, 104, 104, 104),
    );

    const blueBar = AppBarIconstBlueBar();

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
    if (widget.isPressed) {
      return;
    }
    setPressedMode(true);
    widget.appBarNotifier.setMenuClick(widget.index);
  }
}
