import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:schoolwork/childdevelop/schoolchildlist.dart';
import 'package:schoolwork/childdevelop/ticker.dart';
import 'package:schoolwork/eduprogress/weeklyexpanded.dart';
import 'package:schoolwork/eduprogress/weeklyoverview.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WeeklyProadd extends StatefulWidget {
  @override
  _WeeklyProaddState createState() => _WeeklyProaddState();
}

class _WeeklyProaddState extends State<WeeklyProadd> {
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
                              'assets/images/weeklyprog.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                WeeklyExpandedList(),
                WeeklySocialSkills(),
                WeeklyHomeWork(),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: 280,
                        height: 100,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            // offset: Offset(0.0, 1.0), //(x,y)
                          ),
                        ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Teacher\'s comment',
                            fillColor: Colors.black,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black12, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Cancel'),
                            SizedBox(width: 160),
                            Container(
                                padding: EdgeInsets.all(5),
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Save',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                color: Colors.blue),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 215,
                  width: 400,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeeklySocialSkills extends StatefulWidget {
  @override
  _WeeklySocialSkillsState createState() => _WeeklySocialSkillsState();
}

class _WeeklySocialSkillsState extends State<WeeklySocialSkills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white70,
          child: SingleChildScrollView(
            child: ConfigurableExpansionTile(
              header: Container(
                width: 370,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Color(0xFFFFF6F6),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 100),
                    Text('Social Skills', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 80),
                    // Icon(
                    //   Icons.arrow_upward_outlined,
                    //   color: Color(0xFFFF7661),
                    //   size: 30,
                    // ),
                    Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/arrow.png', scale: 1))
                  ],
                ),
              ),
              children: [
                Container(height: 15, width: 365, color: Colors.white30),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 360,
                        color: Colors.white70,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Following teacher\'s instruction',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                ScreenProgress(ticks: 3),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Need constant',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'assistance',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Text(
                                      'Need some',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'assistance',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Independent',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 360,
                  color: Colors.white70,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Paying attention',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          ScreenProgress(ticks: 3),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Need constant',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                'Need some',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Independent',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                  width: 360,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Working Independently',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          ScreenProgress(ticks: 3),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Need constant',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                'Need some',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Independent',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeeklyHomeWork extends StatefulWidget {
  @override
  _WeeklyHomeWorkState createState() => _WeeklyHomeWorkState();
}

class _WeeklyHomeWorkState extends State<WeeklyHomeWork> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white70,
          child: SingleChildScrollView(
            child: ConfigurableExpansionTile(
              header: Container(
                width: 370,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Color(0xFFE2F7FF),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text('Home work/ Class Exercises',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(width: 60),
                    Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/arrow.png', scale: 1))
                  ],
                ),
              ),
              children: [
                Container(height: 15, width: 365, color: Colors.white30),
                Container(
                  width: 360,
                  color: Colors.white70,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Does home work',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          ScreenProgress(ticks: 3),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Need constant',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                'Need some',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Independent',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                  width: 360,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Does class exercise',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          ScreenProgress(ticks: 3),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Need constant',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                'Need some',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'assistance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Independent',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeeklyExpandedList extends StatefulWidget {
  @override
  _WeeklyExpandedListState createState() => _WeeklyExpandedListState();
}

class _WeeklyExpandedListState extends State<WeeklyExpandedList> {
  @override
  Widget build(BuildContext context) {
    return ConfigurableExpansionTile(
      header: Container(
        width: 375,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
                size: 30,
              ),
            ),
            SizedBox(width: 20),
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
              size: 30,
            ),
          ],
        ),
      ),
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return AttributeExpandedList();
                  }),
              Container(
                height: 20,
                width: 362,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  // color: Colors.white70,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class AttributeExpandedList extends StatefulWidget {
  @override
  _AttributeExpandedListState createState() => _AttributeExpandedListState();
}

class _AttributeExpandedListState extends State<AttributeExpandedList> {
  int index;
  get i => 7;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                  // shadow direction: bottom right
                )
              ],
            ),
            width: 360,
            height: 70,
            // color: Colors.black12,
            padding: EdgeInsets.all(05),
            child: Row(
              children: [
                SizedBox(width: 10),
                Align(alignment: Alignment.center, child: Text('Talking')),
                Spacer(),
                Align(
                    alignment: Alignment.centerRight,
                    child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillListView extends StatefulWidget {
  final String title;

  const SkillListView({Key key, this.title}) : super(key: key);

  @override
  SkillListViewState createState() => SkillListViewState();
}

class SkillListViewState extends State<SkillListView> {
  bool expandFlag = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, i) {
            return ExpandedList();
          }),
    );
  }
}
