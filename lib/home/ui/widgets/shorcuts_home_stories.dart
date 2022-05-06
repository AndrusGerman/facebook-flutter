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
      height: 180,
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
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(108, 158, 158, 158),
          border: Border.all(
            color: Color.fromARGB(33, 0, 0, 0),
            width: 1,
          )),
      width: 100,
      alignment: Alignment.topCenter,
    );
  }
}

class StorieCreateStorieBox extends StatelessWidget {
  const StorieCreateStorieBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = Container(
      height: 95,
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

    final text = Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.bottomCenter,
      child: Text(
        "Create story",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );

    final add = Container(
        alignment: Alignment(0, 0.2),
        child: CircleAvatar(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Colors.blue,
          maxRadius: 15,
        ));

    return Stack(
      children: [
        img,
        add,
        text,
      ],
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
