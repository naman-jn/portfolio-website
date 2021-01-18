import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/about/about_section.dart';
import 'package:portfolio_web/sections/contact/contact_section.dart';
import 'package:portfolio_web/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_web/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  final contactKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding),
            AboutSection(),
            RecentWorkSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(contactKey),
          ],
        ),
      ),
    );
  }
}
