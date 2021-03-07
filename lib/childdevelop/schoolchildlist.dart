import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';

// ignore: unused_element
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
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: children.length,
          itemBuilder: (context, i) {
            return ExpandedList();
          }),
    );
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
                width: 350,
                height: 70,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
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
                    SizedBox(
                      width: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 28.7,
                        // backgroundImage: AssetImage('assets/images/'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Adam Schurle')
                  ],
                ),
              ),
            ),
            // header: Container(
            //   width: 350,
            //   height: 70,
            //   margin: EdgeInsets.all(5),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8.0),
            //     color: Colors.white,
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black38,
            //         blurRadius: 1.0,
            //         spreadRadius: 0.0,
            //         // shadow direction: bottom right
            //       )
            //     ],
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Align(
            //         alignment: Alignment.centerLeft,
            //         child: CircleAvatar(
            //           radius: 28.7,
            //           // backgroundImage: AssetImage('assets/images/'),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text('Adam Schurle')
            //     ],
            //   ),
            // ),
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: children.length,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 400,
                      height: 40,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
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
                        children: [SizedBox(width: 10), Text('Attributes')],
                      ),
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}

//   // ignore: unused_element
// ignore: unused_element
_buildExpandableContent(Children children) {
  List<Widget> columnContent = [];

  for (String content in children.attribute)
    columnContent.add(
      new ListTile(
        title: new Text(
          content,
          style: new TextStyle(fontSize: 18.0),
        ),
        // leading: new Icon(vehicle.icon),
      ),
      // );
      // SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       new Container(
      //         height: 50,
      //         color: Colors.red[600],
      //         child: Center(child: Text(content)),
      //       )
      //     ],
      //   ),
      // ),
    );

  return columnContent;
}

List<Children> children = [
  new Children(
    'Adam Schurle',
    [
      'Respect',
      'Neat',
      'Puntuality',
      'Polite',
      'Honest',
      'Attentiveness',
      'Curiosity'
    ],
  ),
  new Children(
    'Bell Diamond',
    [
      'Respect',
      'Neat',
      'Puntuality',
      'Polite',
      'Honest',
      'Attentiveness',
      'Curiosity'
    ],
  ),
  new Children(
    'Carrot Dyke',
    [
      'Respect',
      'Neat',
      'Puntuality',
      'Polite',
      'Honest',
      'Attentiveness',
      'Curiosity'
    ],
  ),
];

class Children {
  final String name;
  List<String> attribute = [];

  Children(this.name, this.attribute);
}
