import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class BoxContent extends StatelessWidget {
  const BoxContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
          constraints:
              BoxConstraints(maxWidth: 910, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Naman Jain",
                style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "Flutter Developer",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),
              SizedBox(height: 15),
              Container(
                height: 7,
                width: 45,
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      icon: Image.asset("assets/images/linkedin.png"),
                      onPressed: () {}),
                  SizedBox(
                    width: 21,
                  ),
                  IconButton(
                      icon: Image.asset("assets/images/github.png"),
                      onPressed: () {}),
                  SizedBox(
                    width: 21,
                  ),
                  IconButton(
                      icon: Image.asset("assets/images/instagram.png"),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
