import 'package:flutter/material.dart';
import 'package:stereo/themes/THEMECONSTANTS.dart';

class SexyCard extends StatelessWidget {
  const SexyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    final widthRatio = 411 / width;
    final heightRatio = 731 / height;

    // figma height: 731 , width = 411

    return Container(
      decoration: BoxDecoration(),
      width: widthRatio * 145,
      height: heightRatio * 222,
      child: Stack(
        children: [
          Container(
            width: widthRatio * 150,
            height: heightRatio * 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/night_sky.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(left: 13 * widthRatio, top: 17 * heightRatio),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 6),
                    color: APPCOLORS.shadowColor),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            height: 30,
            width: 30,
            child: ClipOval(
              clipper: MyClipper(),
              child: Image.asset(
                "assets/images/profile.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: widthRatio * 150,
              height: heightRatio * 47,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: APPCOLORS.shadowColor,
                        blurRadius: 3,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: APPCOLORS.sexyPurple),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 7 * widthRatio, vertical: 5 * heightRatio),
              margin: EdgeInsets.only(
                  top: 21 * heightRatio, right: 12 * widthRatio),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: APPCOLORS.shadowColor,
                      offset: Offset(0, 6 * heightRatio),
                      blurRadius: 4,
                    )
                  ],
                  borderRadius: BorderRadius.circular(158 * heightRatio),
                  color: APPCOLORS.sexyPurple),
              child: Text(
                'MYSTERY',
                style: TextStyle(
                    color: APPCOLORS.white,
                    fontSize: 12,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
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
