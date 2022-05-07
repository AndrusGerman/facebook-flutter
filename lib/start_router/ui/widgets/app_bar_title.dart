import 'package:facebook_flutter/start_router/controller/app_bar_notifier.dart';
import 'package:facebook_flutter/start_router/ui/widgets/app_bar_icons.dart';
import 'package:facebook_flutter/widget/global_icon_button_title.dart';
import 'package:flutter/material.dart';

class AppBarAllContent extends StatelessWidget {
  final AppBarClickMenuNotifier appBarNotifier;
  const AppBarAllContent({Key? key, required this.appBarNotifier})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
          height: 153,
          width: screenWidth,
          //color: Colors.amber,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 0.2,
              offset: Offset(0.2, 0.3),
            )
          ], color: Colors.white),
          child: Stack(
            children: [
              const AppBarTitle(),
              AppBarIconsContainer(
                appBarNotifier: appBarNotifier,
              )
            ],
          ))
    ]);
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleText = Text(
      "facebook",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );

    final pagePosition = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 15),
              child: titleText,
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: GlbalIconButtonTitle(
              iconFirst: Icons.search,
              iconLast: Icons.sms_sharp,
            ),
          )),
        ],
      ),
    );

    return Container(
      child: pagePosition,
      margin: EdgeInsets.only(top: 50),
    );
  }
}
