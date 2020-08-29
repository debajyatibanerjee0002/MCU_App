import 'package:flutter/material.dart';
import 'package:mcu_app/card.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MCU App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              Text(
                'Super Hero',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Expanded(
                child: HeroCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var roundnessFactor = 50.0;
    path.moveTo(0, size.height * 0.5);
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);

    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(
        size.width, 0, size.width - roundnessFactor * 2, roundnessFactor * 1);
    path.lineTo(roundnessFactor, size.height * 0.37);
    path.quadraticBezierTo(0, size.height * 0.33 + roundnessFactor, 0,
        size.height * 0.44 + roundnessFactor * 1);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
