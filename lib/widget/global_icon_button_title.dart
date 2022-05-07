import 'package:flutter/material.dart';

class GlbalIconButtonTitle extends StatelessWidget {
  final IconData iconFirst;
  final IconData iconLast;
  const GlbalIconButtonTitle(
      {Key? key, required this.iconFirst, required this.iconLast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeIcon = 24.0;
    const circleColor = Color.fromARGB(255, 236, 236, 236);
    const iconFirstCircle = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        Icons.search,
        size: sizeIcon,
        color: Colors.black,
      ),
    );

    const iconLastCircle = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        Icons.sms_sharp,
        size: sizeIcon,
        color: Colors.black,
      ),
    );

    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: iconFirstCircle,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: iconLastCircle,
          )
        ],
      ),
    );
  }
}
