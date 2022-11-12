// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore, sort_child_properties_last, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:split_view/split_view.dart';

final List<String> imgList = [
  "images/38FrontStreet.jpg",
  "images/HeavnerAvenue.jpg",
  "images/22BackStreet.jpg",
];

// bool showProgress = false;

final List<Widget> offerCard = [];

class HomeTabb extends StatefulWidget {
  static String homeTabId = "home_tab";
  @override
  State<HomeTabb> createState() => _HomeTabbState();
}

class _HomeTabbState extends State<HomeTabb> {
  bool showSpinner = false;

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000.0,
                      height: 500,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 5.0),
                        // color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  imgList[imgList.indexOf(item)]
                                      .replaceAll("images/", "")
                                      .replaceAll(".jpg", ""),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '900/m',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'California, USA',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFffcc00),
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFffcc00),
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFffcc00),
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFffcc00),
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplitView(viewMode: SplitViewMode.Vertical, children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "California, USA",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.search),
                        color: Colors.grey.shade300,
                        shape: CircleBorder(side: BorderSide.none),
                        minWidth: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.person),
                        color: Colors.grey.shade300,
                        shape: CircleBorder(side: BorderSide.none),
                        minWidth: 10,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 10),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "21 results",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: imageSliders,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            // showSpinner = true;
                          });
                          // Navigator.pushNamed(context, WorkSpaces.seeAllId);
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          textAlign: TextAlign.start,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
