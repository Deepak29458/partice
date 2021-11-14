import 'package:assigment/Details/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> roomList = [
    {
      "image": 'assets/bed.svg',
      "categories": "Bed Room",
      "lights": "4 lights",
    },
    {
      "image": 'assets/bed.svg',
      "categories": "Living Room",
      "lights": "2 lights",
    },
    {
      "image": 'assets/bed.svg',
      "categories": "Kitchen",
      "lights": "5 lights",
    },
    {
      "image": 'assets/bed.svg',
      "categories": "Bathroom",
      "lights": "1 lights",
    },
    {
      "image": 'assets/bed.svg',
      "categories": "Outdoor",
      "lights": "5 lights",
    },
    {
      "image": 'assets/bed.svg',
      "categories": "Balcony",
      "lights": " 2 lights",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
      ),
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 30),
                child: Text(
                  "Control \nPanel",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    for (Map rooms in roomList)
                      categoryItemBuilder(
                          context, rooms['categories'], rooms['lights'])
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }

  Widget categoryItemBuilder(
    BuildContext context,
    String categories,
    String lights,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        elevation: 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(""),
            Text(
              categories,
              style: TextStyle(
                fontSize: 19.5,
                color: Colors.grey[400],
              ),
            ),
            Text(
              lights,
              style: TextStyle(
                fontSize: 15.5,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
