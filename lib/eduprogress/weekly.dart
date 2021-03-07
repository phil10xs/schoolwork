import 'package:flutter/material.dart';
import 'package:schoolwork/childdevelop/classlist.dart';
import 'package:schoolwork/childdevelop/schoolchildlist.dart';
import 'package:schoolwork/eduprogress/draggable.dart';

class WeeklyProgress extends StatefulWidget {
  @override
  _WeeklyProgressState createState() => _WeeklyProgressState();
}

class _WeeklyProgressState extends State<WeeklyProgress> {
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
                SizedBox(width: 30),
                Text(
                  'Weekly Progress',
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
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/weeklypro2.png'),
                ),
              ),
              Positioned(
                right: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Create report once',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text('a week preferably',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text('on Friday',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              )
            ],
          ),
          SingleChildScrollView(child: ScreenUp()),
        ],
      ),
    );
  }
}
