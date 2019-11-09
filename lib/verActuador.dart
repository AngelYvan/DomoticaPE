import 'package:flutter/material.dart';

void main() => runApp(verActuador());

class verActuador extends StatelessWidget {
  // This is the starting value of the slider.
  double _value = 10.0;

  @override
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          _buildButtonColumn(color, Icons.lightbulb_outline, 'LOW'),
          //_buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          Slider(
            min: 0.0,
            max: 15.0,
            onChanged: (val){
              setState2(val);
            },
            value: _value,
          ),
          _buildButtonColumn(color, Icons.highlight, 'HIGH'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Actuador n de la habitacion n'
         ,
        softWrap: true,
      ),
    );
    return MaterialApp(
      //title: 'Welcome to Flutter',
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),*/
        body: ListView(
          children: [
            Image.asset(
              'assets/fondo.png',
              width: 600,
              height: 200,
              fit: BoxFit.fill,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );


  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  static bool isd = false;
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Actuador Light',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Regular Brillo',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        /*Icon(
          Icons.star,
          color: Colors.red[500],
        ),*/
        Text('OFF'),
        Switch(value: isd,
          activeColor: Colors.green,
          activeTrackColor: Colors.lightGreen,
          onChanged: (value){
            setState(value);
          },
        ),
        Text('ON'),
      ],
    ),
  );


  static bool setState(bool value) {
    return isd = !value;
  }

  void setState2(double value) {
    _value = value;
  }


}