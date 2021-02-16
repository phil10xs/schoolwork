import 'package:flutter/material.dart';
import 'package:schoolwork/classlist.dart';
import 'package:schoolwork/schoolchildlist.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';

class SchoolChoose extends StatefulWidget {
  @override
  _SchoolChooseState createState() => _SchoolChooseState();
}

class _SchoolChooseState extends State<SchoolChoose> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 33),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF9C9ED2),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child:
                      Icon(Icons.arrow_back_ios_outlined, color: Colors.grey),
                ),
                SizedBox(width: 20),
                Text(
                  'Development Journey',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profilepic.png'),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/images/mombaby.png'),
          ),
          Container(
            width: 420,
            decoration: BoxDecoration(
                color: Color(0xFFF2F3FA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'SELECT CLASS',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ClassList(),
                  ExpandableListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
