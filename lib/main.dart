import 'package:domoticape/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Domotica PE',
      home: MyHomePage(
        title: 'Domotica Login',
      ),
      /*home: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.fill,
          ),
        ),
        child: MyHomePage(title: 'Domotica Login',),
      ),*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Correo Electrónico',
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
      ),
    );

    final passwordField = Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Contraseña',
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
      ),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xFFF63B3B),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder:(context)=>Home())
          );
        },
        child: Text("Iniciar Sesión",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final siginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Registrarse",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          //color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 170.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 130.0,
                  child: Text("Plataformas Emergentes Domótica",
                      textAlign: TextAlign.center,
                      style: style.copyWith(fontSize: 30.0,
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
                siginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
