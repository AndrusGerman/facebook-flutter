import 'package:facebook_flutter/home/ui/widgets/create_post_home.dart';
import 'package:facebook_flutter/home/ui/widgets/minin_shorcuts_home.dart';
import 'package:facebook_flutter/home/ui/widgets/separator_item_home.dart';
import 'package:facebook_flutter/home/ui/widgets/shorcuts_home.dart';
import 'package:facebook_flutter/home/ui/widgets/simple_post_home.dart';
//import 'package:facebook_flutter/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: const [
//         HomeScrollAll(),
//         AppBarAllContent(),
//       ]),
//     );
//   }
// }

class HomeScrollAll extends StatelessWidget {
  const HomeScrollAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final post = generatePost(index);

        // Is First Item
        if (index == 0) {
          return Column(
            children: [const HomeScrollAllHeaderPost(), post],
          );
        }
        // Is Normal post
        return Column(
          children: [const SeparatorItemHome(), post],
        );
      },
      itemCount: 500,
    );
  }

  generatePost(int index) {
    return SimplePostHome(
      userName: 'AndrusGerman',
      message: 'Thi is my post №${index + 1}',
      urlImg: 'urlImg',
      index: (index + 20),
    );
  }
}

class HomeScrollAllHeaderPost extends StatelessWidget {
  const HomeScrollAllHeaderPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomePostWidget(),
        MinitShorcutsHome(),
        SeparatorItemHome(),
        ShorcutsHome(),
        SeparatorItemHome(),
      ],
    );
  }
}

class FakeHomeWhiteContent extends StatelessWidget {
  const FakeHomeWhiteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: Colors.white,
    );
  }
}
