import 'package:flutter/material.dart';

class UserCircleIMG extends StatelessWidget {
  final double size;
  final ImageProvider assets;
  const UserCircleIMG({Key? key, required this.assets, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImg = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: assets,
          fit: BoxFit.contain,
        ),
        shape: BoxShape.circle,
      ),
      height: size,
      width: size,
    );
    return profileImg;
  }
}
