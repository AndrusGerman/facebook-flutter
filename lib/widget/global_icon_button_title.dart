import 'package:flutter/material.dart';

class GlbalIconButtonTitle extends StatelessWidget {
  final IconData iconFirst;
  final IconData iconLast;
  final double paddingIcon;
  final double iconSize;
  const GlbalIconButtonTitle({
    Key? key,
    required this.iconFirst,
    required this.iconLast,
    this.paddingIcon = 15,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const circleColor = Color.fromARGB(255, 236, 236, 236);
    final iconFirstCircle = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        iconFirst,
        size: iconSize,
        color: Colors.black,
      ),
    );

    final iconLastCircle = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        iconLast,
        size: iconSize,
        color: Colors.black,
      ),
    );

    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: paddingIcon),
            child: iconFirstCircle,
          ),
          iconLastCircle
        ],
      ),
    );
  }
}
