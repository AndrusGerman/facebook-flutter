import 'package:flutter/material.dart';

class MinitShorcutsHome extends StatelessWidget {
  const MinitShorcutsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(75, 158, 158, 158),
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          MinitShorcutsHomeIcon(
            color: Colors.redAccent,
            icon: Icons.movie,
            text: "Reel",
          ),
          MinitShorcutsHomeIcon(
            color: Colors.purpleAccent,
            icon: Icons.camera,
            text: "Room",
          ),
          MinitShorcutsHomeIcon(
            color: Colors.blueAccent,
            icon: Icons.group_sharp,
            text: "Group",
          ),
          MinitShorcutsHomeIcon(
            color: Colors.red,
            icon: Icons.live_tv,
            text: "Live",
          ),
        ],
      ),
    );
  }
}

class MinitShorcutsHomeIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const MinitShorcutsHomeIcon(
      {Key? key, required this.text, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Row(children: [
      Icon(icon, color: color),
      Container(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        margin: const EdgeInsets.only(left: 2),
      )
    ]);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      width: 90,
      alignment: const Alignment(0, 0),
      child: Container(
        child: content,
        margin: const EdgeInsets.only(left: 10),
      ),
    );
  }
}
