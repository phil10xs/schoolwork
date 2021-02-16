import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Widget childWidget;

  PlaceholderWidget(this.childWidget);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
    );
  }
}
