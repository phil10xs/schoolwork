import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:schoolwork/childdevelop/schoolchildlist.dart';

import 'package:timeline_tile/timeline_tile.dart';

class SchoolDevTimeline extends StatefulWidget {
  @override
  _SchoolDevTimelineState createState() => _SchoolDevTimelineState();
}

class _SchoolDevTimelineState extends State<SchoolDevTimeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EFEFF9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 33),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF9EFEFF9),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(Icons.arrow_back_ios_outlined,
                            color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Development Journey',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profilepic.png'),
                        backgroundColor: Colors.white,
                        radius: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            // Card(
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(2.3),
                                    padding: EdgeInsets.all(05),
                                    height: 58,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF4FD6D2),
                                            // offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.5,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text(
                                      'Development Timeline',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [],
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios_outlined,
                                  size: 15, color: Colors.red),
                              Text(
                                'Prev Step',
                                textAlign: TextAlign.right,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Next Step',
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                            Icon(Icons.arrow_forward_ios_outlined,
                                size: 15, color: Colors.green),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PersonalExpandedList(),
            ComExpandedList(),
            PhysiExpandedList(),
            ThinkinExpandedList(),
          ],
        ),
      ),
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConfigurableExpansionTile(
            header: Expanded(
              child: Container(
                width: 30,
                height: 70,
                margin: EdgeInsets.only(bottom: 02),
                decoration: BoxDecoration(
                  color: Color(0xFFF87B23),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Personal, Social & Emotional'),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.expand_more,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            children: [
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
                            Text('Jan 5, 2019'),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('5:19 pm',
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.start),
                        )
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 210,
                          height: 80,
                          child: Text(
                            'Helps with dressing e.g. Holds out arms for sleeve and foot for shoe',
                            textAlign: TextAlign.justify,
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
                indicatorStyle:
                    const IndicatorStyle(width: 20, color: Colors.purpleAccent),
                endChild: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jan 5, 2019'),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('5:19 pm',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.start),
                          )
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 210,
                            height: 80,
                            child: Text(
                              'Helps with dressing e.g. Holds out arms for sleeve and foot for shoe',
                              textAlign: TextAlign.justify,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jan 5, 2019'),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('5:19 pm',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.start),
                          )
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 210,
                            height: 80,
                            child: Text(
                              'Helps with dressing e.g. Holds out arms for sleeve and foot for shoe',
                              textAlign: TextAlign.justify,
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
                  color: Colors.purpleAccent,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jan 5, 2019'),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('5:19 pm',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.start),
                          )
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 210,
                            height: 80,
                            child: Text(
                              'Helps with dressing e.g. Holds out arms for sleeve and foot for shoe',
                              textAlign: TextAlign.justify,
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
                isLast: true,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jan 5, 2019'),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('5:19 pm',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.start),
                          )
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 210,
                            height: 80,
                            child: Text(
                              'Helps with dressing e.g. Holds out arms for sleeve and foot for shoe',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                beforeLineStyle: const LineStyle(color: Colors.black38),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ComExpandedList extends StatefulWidget {
  @override
  _ComExpandedListState createState() => _ComExpandedListState();
}

class _ComExpandedListState extends State<ComExpandedList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConfigurableExpansionTile(
            header: Expanded(
              child: Container(
                width: 30,
                height: 70,
                margin: EdgeInsets.only(bottom: 02),
                decoration: BoxDecoration(
                  color: Color(0xFFADBD72),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Communication'),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.expand_more,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PhysiExpandedList extends StatefulWidget {
  @override
  _PhysiExpandedListState createState() => _PhysiExpandedListState();
}

class _PhysiExpandedListState extends State<PhysiExpandedList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConfigurableExpansionTile(
            header: Expanded(
              child: Container(
                width: 30,
                height: 70,
                margin: EdgeInsets.only(bottom: 02),
                decoration: BoxDecoration(
                    color: Color(0xFFF25775),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Physical '),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.expand_more,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ThinkinExpandedList extends StatefulWidget {
  @override
  _ThinkinExpandedListState createState() => _ThinkinExpandedListState();
}

class _ThinkinExpandedListState extends State<ThinkinExpandedList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConfigurableExpansionTile(
            header: Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                width: 30,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF8ACCB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Thinking'),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.expand_more,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ExpandedList extends StatefulWidget {
  @override
  _ExpandedListState createState() => _ExpandedListState();
}

class _ExpandedListState extends State<ExpandedList> {
  int index;
  get i => children[index];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConfigurableExpansionTile(
            header: Expanded(
              child: Container(
                width: 30,
                height: 70,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                            'Can tolerate brief separation from special people.')),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.expand_more,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            children: [],
          )
        ],
      ),
    );
  }
}
