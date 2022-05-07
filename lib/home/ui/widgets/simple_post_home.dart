import 'package:facebook_flutter/widgets/user_circle_img.dart';
import 'package:flutter/material.dart';

class SimplePostHome extends StatelessWidget {
  final String userName;
  final String message;
  final String urlImg;
  final int index;
  const SimplePostHome({
    Key? key,
    required this.userName,
    required this.message,
    required this.urlImg,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimplePostHomeHeader(
          message: message,
          userName: userName,
        ),
        SimplePostHomeImage(index: index),
        const SimplePostItemDivider(),
        const SimplePostHomeActions(),
      ],
    );
  }
}

class SimplePostItemDivider extends StatelessWidget {
  const SimplePostItemDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      //color: Colors.black,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      //width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(68, 75, 75, 75),
      ),
    );
  }
}

class SimplePostHomeHeader extends StatelessWidget {
  final String userName;
  final String message;
  const SimplePostHomeHeader({
    Key? key,
    required this.userName,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const profileImg =
        UserCircleIMG(assets: AssetImage("assets/img/profile.png"), size: 45);

    final timePost = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "Just now ",
          style: TextStyle(color: Colors.black45),
        ),
        Icon(
          Icons.timelapse,
          color: Colors.black45,
          size: 12,
        )
      ],
    );

    final postM = IntrinsicHeight(
      child: Row(children: [
        profileImg,
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                timePost
              ],
            ),
          ),
        )
      ], crossAxisAlignment: CrossAxisAlignment.stretch),
    );

    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          postM,
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              message,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            alignment: Alignment.centerLeft,
          )
        ],
      ),
    );
  }
}

class SimplePostHomeImage extends StatelessWidget {
  const SimplePostHomeImage({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/id/$index/400/250"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SimplePostHomeActions extends StatelessWidget {
  const SimplePostHomeActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actions = IntrinsicHeight(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SimplePostHomeActionsButtons(
          text: "Like",
          icon: Icons.handshake_outlined,
        ),
        SimplePostHomeActionsButtons(
          text: "Comment",
          icon: Icons.comment_outlined,
        ),
        SimplePostHomeActionsButtons(
          text: "Share",
          icon: Icons.share,
        ),
      ],
    ));

    return Container(
      height: 50,
      child: actions,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(137, 204, 204, 204),
            blurRadius: 0.5,
            offset: Offset(1, 1),
          ),
        ],
        color: Colors.white,
      ),
    );
  }
}

class SimplePostHomeActionsButtons extends StatelessWidget {
  final String text;
  final IconData icon;
  const SimplePostHomeActionsButtons(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(left: 25),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Icon(icon), Text(text)],
      ),
    ));
  }
}
