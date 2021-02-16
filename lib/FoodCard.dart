import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String image;

  final Function press;

  const FoodCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        height: 350,
        width: 250,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                margin: EdgeInsets.all(1),
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("6.png"),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
