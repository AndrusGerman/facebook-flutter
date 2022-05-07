import 'package:facebook_flutter/widget/global_icon_button_title.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: TitleMenu(),
          margin: EdgeInsets.only(top: 130),
        )
      ],
    );
  }
}

class TitleMenu extends StatelessWidget {
  const TitleMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      "Menu",
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
    final buttons = Expanded(
        child: Container(
      alignment: Alignment.bottomRight,
      child: const GlbalIconButtonTitle(
          iconFirst: Icons.settings, iconLast: Icons.search),
    ));
    final content = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [title, buttons],
      ),
    );

    return Container(
      child: content,
      margin: EdgeInsets.symmetric(horizontal: 12),
    );
  }
}
