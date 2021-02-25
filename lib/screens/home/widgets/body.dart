import 'package:flutter/material.dart';
import 'package:shopp/screens/home/widgets/header.dart';
import 'package:shopp/screens/home/widgets/highlights.dart';
import 'package:shopp/screens/home/widgets/recomends-plants.dart';
import 'package:shopp/screens/home/widgets/title-with-more-button.dart';
import 'package:shopp/utils/contants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(text: 'Recomendado', press: () {}),
          RecomendsPlants(),
          TitleWithMoreButton(text: 'Destaques', press: () {}),
          Highlights(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}