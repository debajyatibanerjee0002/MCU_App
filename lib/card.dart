import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'home.dart';

class HeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: BackgroundClipper(),
            child: InkWell(
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => DetailPage()));
              //   Navigator.push(
              //       context,
              //       PageRouteBuilder(
              //           pageBuilder: (context, a, b) => DetailPage()));
              // },
              child: Hero(
                tag: 'background',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.orange, Colors.deepOrangeAccent],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/ironman.png',
                scale: 1.5,
                height: 300,
              )),
        ),
        Positioned(
          bottom: 20,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Iron Man',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              Text(
                'Click of more',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
