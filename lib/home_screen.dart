import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            //header/app bar section
            child: Column(
              children: <Widget>[
                _appBarSection(),
                _searchAndEdit(context),
                _searchedList(context)
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: _mainContent(context),
          ),
          Expanded(
            flex: 1,
            child: _bottomNavigation(),
          ),
        ],
      ),
    );
  }
}

Widget _appBarSection() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Flora Shop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Choose your new green friend",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
          ],
        ),
      ),
      Spacer(),
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 87, 9, 111),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
        child: Stack(
          children: <Widget>[
            Center(
                child: Icon(
              FontAwesomeIcons.shoppingBag,
              color: Colors.white,
              size: 25,
            )),
            Positioned(
              bottom: 20,
              right: 15,
              child: Container(
                child: Center(
                    child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 110, 193, 114)),
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _searchAndEdit(BuildContext context) {
  return Row(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 16),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: "Search For Plant",
              icon: Icon(
                FontAwesomeIcons.search,
                size: 20,
              )),
        ),
        margin: EdgeInsets.only(top: 15, left: 20),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 238, 243, 245)),
      ),
      Container(
        child: Icon(
          FontAwesomeIcons.slidersH,
          size: 20,
          color: Color.fromARGB(255, 148, 96, 166),
        ),
        margin: EdgeInsets.only(top: 15, left: 5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 238, 243, 245)),
      ),
      Container(
        child: Icon(
          FontAwesomeIcons.camera,
          size: 20,
          color: Color.fromARGB(255, 148, 96, 166),
        ),
        margin: EdgeInsets.only(top: 15, left: 5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 238, 243, 245)),
      )
    ],
  );
}

Widget _searchedList(BuildContext context) {
  List<String> litems = ["Cactus", "Pine tree"];
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 237, 230, 239),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    litems[index],
                    style: TextStyle(color: Color.fromARGB(255, 88, 21, 106)),
                  ),
                  Icon(
                    FontAwesomeIcons.trash,
                    size: 12,
                    color: Color.fromARGB(255, 88, 21, 106),
                  )
                ],
              ),
            ),
          );
        }),
  );
}

Widget _mainContent(BuildContext context) {
  List<String> plantImages = [
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bright-living-room-with-a-large-house-plant-copy-royalty-free-image-1580854667.jpg?crop=0.479xw:0.998xh;0.0241xw,0&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/yucca-cane-plant-in-a-pot-on-a-white-background-royalty-free-image-1580856558.jpg?crop=0.91771xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hbu.h-cdn.co/assets/17/27/1499282280-peace-lily.jpg?crop=1.0xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-potted-cactus-royalty-free-image-771499429-1553270484.jpg?crop=1xw:1xh;center,top&resize=980:*"
  ];
  List<String> plantPrice = ["\$38", "\$14", "\$21", "\$38"];
  List<String> plantName = [
    "Bird of Paradise",
    "Yucca Cane Plant",
    "Peace Lilies",
    "Cacti"
  ];

  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plantImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(plantImages[index])),
                  color: Color.fromARGB(255, 237, 230, 239),
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Icon(FontAwesomeIcons.heart,
                          color: Color.fromARGB(255, 81, 13, 104))),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Container(
                            color: Colors.white.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    plantPrice[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    plantName[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      width: 250,
                      height: 60,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 40,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.plus,
                        size: 15,
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 108, 194, 113),
                          borderRadius: BorderRadius.circular(14)),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
  );
}

Widget _bottomNavigation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Indoor",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 81, 13, 104)),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 30,
            height: 3,
            color: Color.fromARGB(255, 81, 13, 104),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Outdoor",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Suggested",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
        ],
      )
    ],
  );
}
