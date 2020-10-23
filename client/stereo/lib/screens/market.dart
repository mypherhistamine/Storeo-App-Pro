import 'package:flutter/material.dart';
import 'package:stereo/widgets/sexyCard.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      child: ListView(
        children: [
          SexyCard(),
          SizedBox(
            height: 20,
          ),
          SexyCard(),
          SexyCard(),
          SexyCard(),
          SexyCard(),
        ],
      ),
    );
  }
}
