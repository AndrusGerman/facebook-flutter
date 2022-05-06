import 'package:flutter/material.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImg = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/profile.png"),
          fit: BoxFit.contain,
        ),
        shape: BoxShape.circle,
      ),
      height: 45,
      width: 45,
    );

    final boxProfile = Container(
      child: profileImg,
      margin: EdgeInsets.only(left: 10),
    );

    final addImageIcon = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Icon(
        Icons.image_search,
        color: Colors.green,
        size: 33,
      ),
      alignment: Alignment(0, -0.2),
    );

    final contentRow = IntrinsicHeight(
      child: Row(
        children: [
          boxProfile,
          Expanded(
            child: PostCreateButton(),
          ),
          addImageIcon,
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
    final content = Container(
      child: contentRow,
      padding: EdgeInsets.symmetric(vertical: 10),
    );
    return Container(
      child: content,
      margin: EdgeInsets.only(top: 150),
    );
  }
}

class PostCreateButton extends StatefulWidget {
  const PostCreateButton({Key? key}) : super(key: key);

  @override
  State<PostCreateButton> createState() => _PostCreateButtonState();
}

class _PostCreateButtonState extends State<PostCreateButton> {
  @override
  Widget build(BuildContext context) {
    final boxSearch = Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 1),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        "What's on your mind?",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      alignment: Alignment(-0.4, 0),
    );
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
      child: boxSearch,
    );
  }
}
