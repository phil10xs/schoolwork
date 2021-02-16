import 'package:flutter/material.dart';
import 'package:schoolwork/schoolchoose.dart';

class School extends StatefulWidget {
  final String schoolID;

  const School({Key key, this.schoolID}) : super(key: key);
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: Icon(Icons.arrow_back_ios_outlined, color: Colors.grey),
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
        Expanded(
          child: Container(
            width: 420,
            decoration: BoxDecoration(
                color: Color(0xFFF2F3FA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Column(
              children: [
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Child Development Journey',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        'Get Tips and guidance to your child learning',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        'and development in the early years',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        '(That is from Age 0 - 6)',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )),
                SizedBox(height: 70),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Know what to expect, when tips and keep track',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'your child development as he/she grows',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Skip',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SchoolChoose()));
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF5A72B8),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text('Get Started',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
