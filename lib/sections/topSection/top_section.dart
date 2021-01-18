import 'dart:ui';

import 'package:flutter/material.dart';
import 'components/blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 36),
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        width: 1200,
        child: Stack(
          children: [
            BlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 15,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              left: 30,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
