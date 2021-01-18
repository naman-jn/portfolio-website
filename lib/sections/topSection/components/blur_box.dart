import 'package:flutter/material.dart';

import 'box_content.dart';

class BlurBox extends StatelessWidget {
  const BlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          BoxContent(size: size),
          Spacer(),
        ],
      ),
    );
  }
}
