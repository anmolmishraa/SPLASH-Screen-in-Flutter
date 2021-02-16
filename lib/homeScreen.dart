import 'package:flutter/material.dart';

import 'constants.dart';
import 'category_title.dart';
import 'FoodCard.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      bottomNavigationBar: newMethod(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              " Choose Your \n Favorite Flavor",
              style: Theme.of(context).textTheme.headline4,
            )),
        Text("    wide range of fresh and healthy juices \n",
            style: TextStyle(color: Colors.grey)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              CategoryTitle(
                title: "All",
              ),
              CategoryTitle(
                title: "Juices",
                active: true,
              ),
              CategoryTitle(title: "Creams"),
              CategoryTitle(title: "yogurt"),
              CategoryTitle(title: "Juices"),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                ),
                FoodCard(),
                FoodCard(),
                FoodCard(),
              ],
            )),
        Text(
          "  Suggested Drinks",
          style: Theme.of(context).textTheme.headline4,
        ),
        Expanded(
          child: Image.asset("4.png"),
        ),
      ]),
    );
  }

  BottomNavigationBar newMethod() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFFB878F),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.blue,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble_outline_rounded,
            color: Colors.blueAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_outlined,
            color: Colors.blueAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outlined,
            color: Colors.blueAccent,
          ),
          label: '',
        ),
      ],
    );
  }
}
