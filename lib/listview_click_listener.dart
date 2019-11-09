import 'package:domoticape/verActuador.dart';
import 'package:flutter/material.dart';

import 'bottomBar.dart';

class ListViewClickListener extends StatefulWidget {
  _ListViewClickListenerState createState() => _ListViewClickListenerState();
}

class _ListViewClickListenerState extends State<ListViewClickListener> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> _listViewData = [
    "Room 1 light",
    "Room 2 light",
    "Room 3 light",
    "Room 1 fan",
    "Room 2 fan",
    "Room 3 fan",
    "Kitchen light",
    "Kitchen fan",
    "Door",
  ];

  @override
  Widget build(BuildContext context) {
    final titles = ['Room 1 light', 'Room 2 light', 'Room 3 light', 'Room 1 fan',
      'Room 2 fan', 'Room 3 fan', 'Kitchen light', 'Kitchen fan', 'Door'];

    final icons = [Icons.lightbulb_outline, Icons.lightbulb_outline,
      Icons.lightbulb_outline, Icons.whatshot, Icons.whatshot,
      Icons.whatshot, Icons.lightbulb_outline, Icons.whatshot,
      Icons.exit_to_app];
    bool isSwitched = false;
    /*return Scaffold(
      key: _scaffoldKey,
      /*appBar: AppBar(
        title: Text('Click Listener ListView Example'),
      ),*/
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: _listViewData
            .map((data) => ListTile(
          leading: Icon(Icons.person),
          title: Text(data),
          trailing: new Switch(
            value: isSwitched,
            activeColor: Colors.green,
            activeTrackColor: Colors.lightGreen,
            onChanged: (value){
              setState(() {
                isSwitched = value;
              });
            },
          ),
          onTap: () { _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text("$data Clicked!"),
            duration: Duration(seconds: 1),

            ));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => verActuador()),
            );
          },

        ))
        .toList(),


      ),*/

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card( //                           <-- Card widget
          child: ListTile(
            leading: Icon(icons[index]),
            title: Text(titles[index],style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            subtitle: Row(
              children: <Widget>[
                Text("OFF", style: TextStyle(color: Colors.black)),
                Switch(value: isSwitched,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.lightGreen,
                  onChanged: (value){
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                //Icon(Icons.linear_scale, color: Colors.yellowAccent),
                Text("ON", style: TextStyle(color: Colors.black)),


              ],
            ),

            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black45, size: 30.0),


            onTap: () { /*_scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("index Clicked!"),
              duration: Duration(seconds: 1),

              ));*/

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => verActuador()),
              );
            },

          ),
        );
      },

    );


  }
}