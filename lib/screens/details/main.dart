import 'package:flutter/material.dart';
import 'package:shopp/screens/details/widgets/body.dart';

class Detail {
  final String title;
  final String description;
  final int price;

  Detail(this.title, this.description, this.price);
}

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}
