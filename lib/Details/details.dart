import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Bed \nRoom",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      "4 Lights",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 15, top: 20),
              child: SafeArea(
                child: ListView(
                  children: [
                    Text(
                      "Intensity",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    Text(
                      "Colors",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(''),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(''),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(''),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(''),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    Text(
                      "Scenes",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(colors: [
                                Colors.redAccent,
                                Colors.orangeAccent
                              ]),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0))
                              ]),
                          child: Center(
                              child: Text(
                            "Birthday",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                        Container(
                          width: 160,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  colors: [Colors.indigo, Colors.blueAccent]),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0))
                              ]),
                          child: Center(
                              child: Text(
                            "Party",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  colors: [Colors.blue, Colors.blueAccent]),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0))
                              ]),
                          child: Center(
                              child: Text(
                            "Relax",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                        Container(
                          width: 160,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  colors: [Colors.green, Colors.greenAccent]),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0))
                              ]),
                          child: Center(
                              child: Text(
                            "Fun",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 320,
            height: 50,
            width: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Colors.white,
              child: Icon(Icons.power_off),
            ),
          ),
        ],
      ),
    );
  }
}
