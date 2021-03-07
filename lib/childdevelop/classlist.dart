import 'package:flutter/material.dart';

class ClassList extends StatefulWidget {
  @override
  _ClassListState createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFDC994),
                            child: Text(
                              'LDC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            radius: 45,
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('PRE-NURSURY')
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFE5F6FF),
                            child: Text(
                              'NU 1',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold),
                            ),
                            radius: 45,
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('NURSURY 1')
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFDC994),
                            child: Text('NU 2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            radius: 45,
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('NURSURY 2')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 10,
                        color: Color(0xFFFDC994),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFDC994),
                            child: Text(
                              'NU 3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            radius: 45,
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('NURSURY 3')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 10,
                        color: Color(0xFFFDC994),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFDC994),
                            child: Text(
                              'GR 1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            radius: 45,
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('GRADE 1')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
