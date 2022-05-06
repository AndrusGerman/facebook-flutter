import 'package:facebook_flutter/widgets/app_bart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        Container(
          height: 150,
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
            children: const [HomeTitleContent(), AppBarWidget()],
          ),
        )
      ]),
    );
  }
}

class HomeTitleContent extends StatelessWidget {
  const HomeTitleContent({Key? key}) : super(key: key);

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
    const sizeIcon = 27.5;
    const circleColor = Color.fromARGB(88, 158, 158, 158);
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
