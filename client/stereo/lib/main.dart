import 'package:flutter/material.dart';
import 'package:stereo/screens/market.dart';
import 'package:stereo/themes/THEMECONSTANTS.dart';
import 'package:stereo/widgets/betterCard.dart';
import 'package:stereo/widgets/sexyCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: APPCOLORS.background,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: BetterCard(),
        ),
      ),
    );
  }
}
