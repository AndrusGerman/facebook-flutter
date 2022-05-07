import 'package:facebook_flutter/widgets/app_bar_icons.dart';
import 'package:flutter/material.dart';

class AppBarAllContent extends StatelessWidget {
  const AppBarAllContent({Key? key}) : super(key: key);

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
            children: const [AppBarTitle(), AppBarIconsContainer()],
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
            child: HomeTitleIconsListPrimari(),
          ),
        ],
      ),
    );

    return Container(
      child: pagePosition,
      margin: EdgeInsets.only(top: 50),
    );
  }
}

class HomeTitleIconsListPrimari extends StatelessWidget {
  const HomeTitleIconsListPrimari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeIcon = 24.0;
    const circleColor = Color.fromARGB(255, 236, 236, 236);
    const search = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        Icons.search,
        size: sizeIcon,
        color: Colors.black,
      ),
    );

    const chatMessager = CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        Icons.sms_sharp,
        size: sizeIcon,
        color: Colors.black,
      ),
    );

    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: search,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: chatMessager,
          )
        ],
      ),
    );
  }
}
