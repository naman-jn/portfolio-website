import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';

import '../../components/default_button.dart';
import '../../components/my_outline_button.dart';
import '../../constants.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:15),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "About Me",
            subTitle: "A brief introduction to myself",
            color: Colors.purple[900],
          ),
          Container(
            width: 1100,
            child: Text(
              "Dedicated and efficient Flutter Developer. Fascination for development is what drives me to build real world products. Currently pursuing my Bachelor's Degree in Computer Science and Enginerring from SRM-IST. I love to turn ideas into reality through my apps. I create mobile apps that are highly optimized, robust, user friendly and with clean UI using Flutter.",
              style: TextStyle(
                  fontWeight: FontWeight.w200, color: kTextColor, height: 2,fontSize: 18),
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
