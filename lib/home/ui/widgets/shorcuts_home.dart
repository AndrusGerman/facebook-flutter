import 'package:facebook_flutter/home/ui/widgets/shorcuts_home_stories.dart';
import 'package:flutter/material.dart';

class ShorcutsHome extends StatelessWidget {
  const ShorcutsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          ShorcutsHomeButton(text: "Stories", selected: true),
          ShorcutsHomeButton(text: "Reels"),
          ShorcutsHomeButton(text: "Rooms")
        ],
      ),
    );
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: content,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ]),
        ),
        ShorcutsHomeStories(),
      ],
    );
  }
}

class ShorcutsHomeButton extends StatelessWidget {
  final String text;
  final bool selected;
  const ShorcutsHomeButton({
    Key? key,
    required this.text,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textCont = Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.blue : Colors.black87,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );

    final blueBar = Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      //padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(top: 37.5),
      alignment: Alignment.bottomCenter,
    );

    return Expanded(
        child: Container(
      child: Stack(
        children: [textCont, selected ? blueBar : Container()],
      ),
      height: 40,
    ));
  }
}
