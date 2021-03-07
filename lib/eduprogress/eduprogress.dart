import 'package:flutter/material.dart';
import 'package:schoolwork/eduprogress/constants.dart';

String grade = 'Text';

class EduProgress extends StatefulWidget {
  @override
  _EduProgressState createState() => _EduProgressState();
}

class _EduProgressState extends State<EduProgress>
    with SingleTickerProviderStateMixin, RouteAware {
  TabController _tabController;
  int currentIndex = 0;

  final List<Tab> tabs = <Tab>[
    Tab(text: 'Academic'),
    Tab(text: 'Psychomotor'),
    Tab(text: 'Affective Domain'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);

    // TODO: implement initState
    super.initState();
    _tabController.addListener(sendToAnalytics);
  }

  @override
  void dispose() {
    _tabController.removeListener(sendToAnalytics);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7B6A94),
        body: Column(
          children: [
            SizedBox(height: 40),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(Icons.arrow_back_ios_outlined,
                        color: Colors.black),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Educational Progression',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      controller: _tabController,
                      tabs: tabs,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Academic(),
                          Psychomotor(),
                          Affective(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  void sendToAnalytics() {
    if (currentIndex != _tabController.index) {
      setState(() {
        currentIndex = _tabController.index;
      });
    }
  }
}

class Affective extends StatefulWidget {
  @override
  _AffectiveState createState() => _AffectiveState();
}

class _AffectiveState extends State<Affective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EFEFF9),
      body: Column(
        children: [
          Material(
            elevation: 10,
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text('Educational Progress',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Text('Select'),
                                  Text('Term'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('All Terms',
                                        textAlign: TextAlign.center),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in terms)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(children: [
                                Text('Select'),
                                Text('Class'),
                              ]),
                              SizedBox(width: 20),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('Grade 5'),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in grades)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class Psychomotor extends StatefulWidget {
  @override
  _PsychomotorState createState() => _PsychomotorState();
}

class _PsychomotorState extends State<Psychomotor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EFEFF9),
      body: Column(
        children: [
          Material(
            elevation: 10,
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text('Educational Progress',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  Text('Select'),
                                  Text('Term'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('All Terms',
                                        textAlign: TextAlign.center),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in terms)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(children: [
                                Text('Select'),
                                Text('Class'),
                              ]),
                              SizedBox(width: 20),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('Grade 5'),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in grades)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class Academic extends StatefulWidget {
  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EFEFF9),
      body: Column(
        children: [
          Material(
            elevation: 10,
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text('Educational Progress',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  Text('Select'),
                                  Text('Term'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('All Terms',
                                        textAlign: TextAlign.center),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in terms)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(children: [
                                Text('Select'),
                                Text('Class'),
                              ]),
                              SizedBox(width: 20),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('Grade 5'),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Terms',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in grades)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('Select'),
                                  Text('Score'),
                                ],
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.only(
                                    top: 5.0, bottom: 10.0, right: 10.0),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    hint: Text('Subjects'),
                                    underline: Container(height: 0),
                                    onChanged: (String name) {
                                      setState(() {
                                        grade = name;
                                      });
                                    },
                                    isExpanded: true,
                                    disabledHint: Text(
                                      'Subjects',
                                      overflow: TextOverflow.clip,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    items: <DropdownMenuItem<String>>[
                                      for (final value in subjects)
                                        DropdownMenuItem<String>(
                                          value: value['value'],
                                          key: ValueKey(value),
                                          child: Text(
                                            value['name'],
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
