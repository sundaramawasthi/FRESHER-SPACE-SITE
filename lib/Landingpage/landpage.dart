import 'package:flutter/material.dart';

import 'LandingContent.dart';
import 'navbar.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // NavBar(),
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              height: 400,
              width: 650,
              child: Image(
                semanticLabel: "",
                image: AssetImage('images/background.jpg'),
              ),
              // LandingPageAnimation(),
              right: MediaQuery.of(context).size.width / 50,
              top: -50,
            ),
            LandingContent(),
          ],
        ),
      ],
    );
    ;
  }
}
