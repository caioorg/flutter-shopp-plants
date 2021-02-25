import 'package:flutter/material.dart';
import 'package:shopp/screens/details/widgets/images-and-icons.dart';
import 'package:shopp/screens/details/widgets/title-and-price.dart';
import 'package:shopp/utils/contants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Angelica',
            price: 440,
            country: 'Russia',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(29)),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Descrição'),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2)
            ],
          )
        ],
      ),
    );
  }
}
