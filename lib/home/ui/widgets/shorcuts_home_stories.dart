import 'package:flutter/material.dart';

class ShorcutsHomeStories extends StatelessWidget {
  const ShorcutsHomeStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          StorieContainerBox(
            child: StorieCreateStorieBox(),
          ),
          StorieContainerBox(
            child: StorieFriendsBox(),
          ),
          StorieContainerBox(
            child: StorieFriendsBox(),
          ),
          StorieContainerBox(
            child: StorieFriendsBox(),
          ),
        ],
      ),
      height: 170,
    );
  }
}

class StorieContainerBox extends StatelessWidget {
  final Widget child;
  const StorieContainerBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      width: 100,
      alignment: Alignment.topCenter,
    );
  }
}

class StorieCreateStorieBox extends StatelessWidget {
  const StorieCreateStorieBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/profile.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }
}

class StorieFriendsBox extends StatelessWidget {
  const StorieFriendsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/profile.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          child: Text(
            "Maria Vtg",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(7),
        ),
      ],
    );
  }
}
