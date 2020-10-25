import 'package:flutter/material.dart';

class BetterCard extends StatelessWidget {
  const BetterCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 222,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cartoon_forest.jpg'),
              fit: BoxFit.fill,
            ),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: ClipOval(
                        clipper: MyClipper(),
                        child: Image.asset(
                          "assets/images/profile.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
