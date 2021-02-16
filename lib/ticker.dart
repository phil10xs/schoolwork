import 'package:flutter/material.dart';

class ScreenProgress extends StatelessWidget {
  final int ticks;

  ScreenProgress({@required this.ticks});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          tick1(),
          line1(),
          tick2(),
          line2(),
          tick3(),
          line3(),
          tick4(),
        ],
      ),
    );
  }

  Widget tick(bool isChecked) {
    return isChecked
        ? GestureDetector(
            onTap: () {
              print('tapped');
              return Icon(
                Icons.check_circle,
                color: Colors.blue,
              );
            },
            child: Icon(
              Icons.check_circle,
              color: Colors.blue,
            ),
          )
        : GestureDetector(
            onTap: () {
              print('tapped');
              return Icon(
                Icons.check_circle,
                color: Colors.blue,
              );
            },
            child: Icon(
              Icons.radio_button_unchecked,
              color: Colors.blue,
            ),
          );
  }

  Widget tick1() {
    return this.ticks > 0 ? tick(true) : tick(false);
  }

  Widget tick2() {
    return this.ticks > 1 ? tick(true) : tick(false);
  }

  Widget tick3() {
    return this.ticks > 2 ? tick(true) : tick(false);
  }

  Widget tick4() {
    return this.ticks > 3 ? tick(true) : tick(false);
  }

  Widget line1() {
    return this.ticks > 1 ? line(true) : line(false);
  }

  Widget line2() {
    return this.ticks > 2 ? line(true) : line(false);
  }

  Widget line3() {
    return this.ticks > 3 ? line(true) : line(false);
  }

  Widget line(bool isChecked) {
    return isChecked
        ? Container(
            color: Colors.blue,
            height: 6.0,
            width: 90.0,
          )
        : Container(
            color: Colors.white,
            height: 6.0,
            width: 90.0,
          );
  }
}
