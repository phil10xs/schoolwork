import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:schoolwork/schoolchildlist.dart';
import 'package:schoolwork/ticker.dart';

class SchoolPersonal extends StatefulWidget {
  @override
  _SchoolPersonalState createState() => _SchoolPersonalState();
}

class _SchoolPersonalState extends State<SchoolPersonal> {
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
                                    width: 152,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.orange[800],
                                            // offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.5,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text(
                                      'Personal, Social & Emotional',
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
                                    width: 152,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.green[400],
                                            // offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.5,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text(
                                      'Communication',
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
                                    width: 152,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.pink[400],
                                            // offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.5,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text(
                                      'Physical',
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
                                    width: 152,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.pink[200],
                                            // offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.5,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text(
                                      'Thinking',
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
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Text(
                        'Development Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
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
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Step 8 (EYFS 18 - 26 months)',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Next Step',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.green),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 15, color: Colors.green),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(05),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                            'Some children may not be able to show a specific key indicator behavior but may be able to do things that are equivalent, for example, by communicating in a different way.',
                            textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 63,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                        'Helps with Dresssing e.g Hand hold for sleves and foot for shoe',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: ScreenProgress(ticks: 2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Emerging',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 30),
                Text('Developing',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(width: 23),
                Text('Acheived',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '(Seen the first time)',
                  style: TextStyle(fontSize: 11),
                ),
                SizedBox(width: 30),
                Text('(Seen sometimes)', style: TextStyle(fontSize: 11)),
                SizedBox(width: 23),
                Text('(Seen often)',
                    style: TextStyle(
                      fontSize: 11,
                    )),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 270,
                  height: 75,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      // offset: Offset(0.0, 1.0), //(x,y)
                    ),
                  ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: ' Comment'),
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.all(05),
              padding: EdgeInsets.all(06),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Tips',
                          style: TextStyle(fontWeight: FontWeight.w700),
                          textAlign: TextAlign.start)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Making relationships',
                          style: TextStyle(color: Colors.blue),
                          textAlign: TextAlign.start)),
                  Text(
                      'Play copying games with child. E.g. if child is using metal spoon to make noise on the fence, you should do the same.',
                      textAlign: TextAlign.start),
                ],
              ),
            ),
            ExpandableListView(),
          ],
        ),
      ),
    );
  }
}

class ExpandableListView extends StatefulWidget {
  final String title;

  const ExpandableListView({Key key, this.title}) : super(key: key);

  @override
  ExpandableListViewState createState() => ExpandableListViewState();
}

class ExpandableListViewState extends State<ExpandableListView> {
  bool expandFlag = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: children.length,
        itemBuilder: (context, i) {
          return SingleChildScrollView(
            child: ExpandedList(),
          );
        });
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
                padding: EdgeInsets.all(05),
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
