// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'body_about.dart';
import 'body_banner.dart';
import 'body_center.dart';
import 'body_dog.dart';
import 'body_lol.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _Home createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double scale = size.width / 1920;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            banner(size, scale),
            superCode(size, scale, context),
            SizedBox(
              height: 20 * scale,
            ),
            dog(context, scale, size),
            SizedBox(
              height: 20 * scale,
            ),
            lol(scale, context),
            SizedBox(
              height: 20 * scale,
            ),
            about(scale, context, size)
          ],
        ),
      ),
    );
  }
}
