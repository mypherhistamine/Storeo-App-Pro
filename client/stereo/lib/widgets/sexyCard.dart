import 'package:flutter/material.dart';
import 'package:stereo/themes/THEMECONSTANTS.dart';

class SexyCard extends StatelessWidget {
  final String title;
  final String profile;
  final String bgImage;

  const SexyCard({this.title, this.profile, this.bgImage});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> marketData = [
      {
        'profilePic': "assets/images/profile.jpeg",
        'title': 'Mystery',
        'bgImage': 'assets/images/cartoon_forest.jpg',
      },
      {
        'profilePic': "assets/images/profile.jpeg",
        'title': 'Horror',
        'bgImage': 'assets/images/mystery.jpg',
      },
      {
        'profilePic': "assets/images/profile.jpeg",
        'title': 'Mystery',
        'bgImage': 'assets/images/night_sky.jpg',
      },
      {
        'profilePic': "assets/images/profile.jpeg",
        'title': 'Romance',
        'bgImage': 'assets/images/hh.jpg',
      },
      {
        'profilePic': "assets/images/profile.jpeg",
        'title': 'Fiction',
        'bgImage': 'assets/images/cartoon_forest.jpg',
        'name': 'The blue sky'
      },
    ];

    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    final widthRatio = 411 / width;
    final heightRatio = 731 / height;

    // figma height: 731 , width = 411

    return buildSexyCard(
        bgImage: marketData[0]['bgImage'],
        heightRatio: heightRatio,
        widthRatio: widthRatio,
        profile: marketData[0]['profilePic'],
        title: marketData[0]['title']);
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

Widget buildSexyCard({
  widthRatio,
  heightRatio,
  title,
  bgImage,
  profile,
}) {
  return Container(
    width: widthRatio * 140,
    height: heightRatio * 230,
    decoration: BoxDecoration(border: Border.all(color: Colors.green)),
    child: Stack(
      children: [
        Container(
          // width: widthRatio * 150,
          height: heightRatio * 230,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "$bgImage",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: heightRatio * 230,
          decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
          child: Column(
            children: [
              Container(
                width: widthRatio * 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 13 * widthRatio, top: 17 * heightRatio),
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
                          "$profile",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 7 * widthRatio,
                          vertical: 5 * heightRatio),
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
                          borderRadius:
                              BorderRadius.circular(158 * heightRatio),
                          color: APPCOLORS.sexyPurple),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: APPCOLORS.white,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widthRatio * 140,
                padding: EdgeInsets.only(
                    bottom: 13 * heightRatio, left: widthRatio * 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Text(
                  'Waiting Car',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void sampleCode() {
  // Align(
  //   alignment: Alignment.bottomCenter,
  //   child: Container(
  //     width: widthRatio * 145,
  //     height: heightRatio * 47,
  //     decoration: BoxDecoration(
  //         boxShadow: [
  //           BoxShadow(
  //               offset: Offset(0, 3),
  //               color: APPCOLORS.shadowColor,
  //               blurRadius: 3,
  //               spreadRadius: 1)
  //         ],
  //         borderRadius: BorderRadius.circular(15),
  //         color: APPCOLORS.sexyPurple),
  //   ),
  // ),
  // Align(
  //   alignment: Alignment.topRight,
  //   child: Container(
  //     padding: EdgeInsets.symmetric(
  //         horizontal: 7 * widthRatio, vertical: 5 * heightRatio),
  //     margin:
  //         EdgeInsets.only(top: 21 * heightRatio, right: 12 * widthRatio),
  //     decoration: BoxDecoration(
  //         boxShadow: [
  //           BoxShadow(
  //             color: APPCOLORS.shadowColor,
  //             offset: Offset(0, 6 * heightRatio),
  //             blurRadius: 4,
  //           )
  //         ],
  //         borderRadius: BorderRadius.circular(158 * heightRatio),
  //         color: APPCOLORS.sexyPurple),
  //     child: Text(
  //       title,
  //       style: TextStyle(
  //           color: APPCOLORS.white,
  //           fontSize: 12,
  //           fontFamily: 'Lato',
  //           fontWeight: FontWeight.bold),
  //       softWrap: true,
  //       overflow: TextOverflow.fade,
  //     ),
  //   ),
  // ),
}
