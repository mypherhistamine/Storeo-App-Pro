import 'package:flutter/material.dart';
import 'package:stereo/widgets/sexyCard.dart';

class ExplorePage extends StatelessWidget {
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
      'name' : 'The blue sky'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
          width: screenSize.width * 0.930,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.69,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
        
            ),
            itemBuilder: (context, index) {
              return SexyCard(
                bgImage: marketData[index]['bgImage'],
                title: marketData[index]['title'],
                profile: marketData[index]['profilePic'],

              );
            },
            itemCount: marketData.length,
          )),
    );
  }
}
