import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WeeklyOverview extends StatefulWidget {
  @override
  _WeeklyOverviewState createState() => _WeeklyOverviewState();
}

class _WeeklyOverviewState extends State<WeeklyOverview> {
// ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF9C9ED2),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.black),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'Weekly Progress',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profilepic.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/weekly.png',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20.0,
                          child: Row(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.white,
                                elevation: 05,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(3),
                                      padding: EdgeInsets.all(05),
                                      height: 45,
                                      width: 140,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xFFCFB29E),
                                              // offset: Offset(0.0, 1.0), //(x,y)
                                            ),
                                          ]),
                                      child: Center(
                                          child: Text(
                                        'Overview',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.white,
                                elevation: 05,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(3),
                                      padding: EdgeInsets.all(05),
                                      height: 45,
                                      width: 155,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.lightBlue[300],
                                              // offset: Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 0.5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Text('Chart',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.black38,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          PersonalExpandedList(),
        ],
      ),
      // ),
    );
  }
}

class PersonalExpandedList extends StatefulWidget {
  @override
  _PersonalExpandedListState createState() => _PersonalExpandedListState();
}

class _PersonalExpandedListState extends State<PersonalExpandedList> {
  @override
  Widget build(BuildContext context) {
    return

        // Scaffold(
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {},
        //   ),
        //   body:

        Center(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConfigurableExpansionTile(
              header: Expanded(
                  child: Container(
                width: 380,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        print('Hello');
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Color(0xFFFF7661),
                        size: 40,
                      ),
                    ),
                    SizedBox(width: 30),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 26,
                        // backgroundImage: AssetImage('assets/images/'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Adam Schurle', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 60),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFFF7661),
                      size: 40,
                    ),
                  ],
                ),
              )),
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white12,
                        padding: EdgeInsets.all(10),
                        child: Text('Friday 6th, December 2019'),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: Colors.orangeAccent,
                        ),
                        endChild: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Social Skill'),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 210,
                                  height: 80,
                                  child: Column(
                                    children: [
                                      Text(
                                        'GRADING',
                                        textAlign: TextAlign.justify,
                                      ),
                                      Text(
                                        'A',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.justify,
                                      ),
                                      Text(
                                        'See details',
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                            width: 20, color: Colors.purpleAccent),
                        endChild: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Work Habits'),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 210,
                                    height: 80,
                                    child: Column(
                                      children: [
                                        Text(
                                          'GRADING',
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'A',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'See details',
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                        afterLineStyle: const LineStyle(color: Colors.black38),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                          width: 20,
                          color: Colors.orangeAccent,
                        ),
                        endChild: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text('Class / Home'),
                                          Text('Work'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 210,
                                    height: 80,
                                    child: Column(
                                      children: [
                                        Text(
                                          'GRADING',
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'A',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'See details',
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                        afterLineStyle: const LineStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white24,
                        padding: EdgeInsets.all(10),
                        child: Text('Friday 13th, December 2019'),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: Colors.orangeAccent,
                        ),
                        endChild: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Social Skill'),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 210,
                                  height: 80,
                                  child: Column(
                                    children: [
                                      Text(
                                        'GRADING',
                                        textAlign: TextAlign.justify,
                                      ),
                                      Text(
                                        'A',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.justify,
                                      ),
                                      Text(
                                        'See details',
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                            width: 20, color: Colors.purpleAccent),
                        endChild: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Work Habits'),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 210,
                                    height: 80,
                                    child: Column(
                                      children: [
                                        Text(
                                          'GRADING',
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'A',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'See details',
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                        afterLineStyle: const LineStyle(color: Colors.black38),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                          width: 20,
                          color: Colors.orangeAccent,
                        ),
                        endChild: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text('Class / Home'),
                                          Text('Work'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 210,
                                    height: 80,
                                    child: Column(
                                      children: [
                                        Text(
                                          'GRADING',
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'A',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          'See details',
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.black38),
                        afterLineStyle: const LineStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
