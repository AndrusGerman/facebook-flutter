import 'package:facebook_flutter/home/ui/widgets/simple_post_home.dart';
import 'package:flutter/material.dart';

class PostHomeBuild extends StatelessWidget {
  const PostHomeBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return SimplePostHome(
            userName: 'AndrusCodex',
            message: 'Xdd',
            urlImg: 'urlImg',
            index: index + 1);
      },
      itemCount: 1000,
    );
  }
}
