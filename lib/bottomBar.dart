import 'package:domoticape/verActuador.dart';
import 'package:flutter/material.dart';

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  final Set<String> _saved = Set<String>();

  Widget build(BuildContext context) {
    final title = 'DOMOTICAPE: Actuadores';

    //final bool alreadySaved = _saved.contains(pair);
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              //final bool state = false,
              leading: Icon(Icons.lightbulb_outline),
              title: Text('Light'),
              trailing: Icon(
                (_saved.contains('1')) ? Icons.check_box : Icons.check_box_outline_blank,
                color: (_saved.contains('1')) ? Colors.blue : null,
                  //Icons.check_box,

              ),
              onTap: () {
                setState(_saved.contains(title.toString()), '1');
                //});
              },

            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Fan'),
              trailing: Icon(
                (_saved.contains('2')) ? Icons.check_box : Icons.check_box_outline_blank,
                color: (_saved.contains('2')) ? Colors.blue : null,
                //Icons.check_box,

              ),
              onTap: () {
                setState(_saved.contains(title.toString()), '2');

                //});
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Door'),
              trailing: Icon(
                (_saved.contains('2')) ? Icons.check_box : Icons.check_box_outline_blank,
                color: (_saved.contains('2')) ? Colors.blue : null,
                //Icons.check_box,

              ),
              onTap: () {
                setState(_saved.contains(title.toString()), '2');

                //});
              },
            ),
          ],
        ),
      ),
    );
  }

  void setState(bool contains, String s) {
    if (contains) {
      _saved.remove(s);
    } else {
      _saved.add(s);
    }
  }
}*/
import 'package:flutter/material.dart';
import 'listview_click_listener.dart';

void main() => runApp(bottomBar());

class bottomBar extends StatelessWidget {
  // This widget is the root of your application.
//class MyApp extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   return MyAppState();
  // }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: ListViewClickListener(),

    );
  }
}