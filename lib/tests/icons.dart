import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imagePath = 'assets/shield_1.png';
    final String imagePathSvg = 'assets/SafeHack_Logo.svg';
    return Scaffold(
      appBar: AppBar(title: Text('Images')),
      body: Center(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath, height: 200,),
          SvgPicture.asset(imagePathSvg, height: 200,),
        ],
      )),
    );
  }
}
