import 'package:flutter/material.dart';
import 'package:schoolwork/childdevelop/classlist.dart';
import 'package:schoolwork/childdevelop/schoolchildlist.dart';

class ScreenUp extends StatefulWidget {
  @override
  _ScreenUpState createState() => _ScreenUpState();
}

class _ScreenUpState extends State<ScreenUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SELECT CLASS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClassList(),
            ExpandableListView(),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
