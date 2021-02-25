import 'package:flutter/material.dart';
import 'package:shopp/screens/details/main.dart';
import 'package:shopp/utils/contants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RecomendCard(
              name: 'Samatha',
              price: 440,
              country: 'Russia',
              press: () {
                Navigator.pushNamed(context, '/detail',
                    arguments: <String, String>{
                      'title': 'Samantha',
                      'price': '400',
                      'country': 'Russia'
                    });
              },
              image: 'assets/images/image_1.png',
            ),
            RecomendCard(
              name: 'Angelica',
              price: 440,
              country: 'Russia',
              press: () {
                Navigator.pushNamed(context, '/detail',
                    arguments: <String, String>{
                      'title': 'Angelica',
                      'price': '440',
                      'country': 'Russia'
                    });
              },
              image: 'assets/images/image_2.png',
            ),
            RecomendCard(
              name: 'Samatha',
              price: 440,
              country: 'Russia',
              press: () {
                Navigator.pushNamed(context, '/detail',
                    arguments: <String, String>{
                      'title': 'Caio',
                      'price': '440',
                      'country': 'Russia'
                    });
              },
              image: 'assets/images/image_3.png',
            ),
          ],
        ));
  }
}

class RecomendCard extends StatelessWidget {
  const RecomendCard(
      {Key key, this.name, this.image, this.country, this.price, this.press})
      : super(key: key);

  final String name, image, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$name\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: country,
                        style:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
