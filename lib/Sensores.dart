import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


class _State extends State<MyApp>{

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = true;
  bool _value4 = false;
  bool _value5 = true;

 void _onChanged1(bool value) => setState(() => _value1 = value);
 void _onChanged2(bool value) => setState(() => _value2 = value);
 void _onChanged3(bool value) => setState(() => _value3 = value);
 void _onChanged4(bool value) => setState(() => _value4 = value);
 void _onChanged5(bool value) => setState(() => _value5 = value);

 

  @override
  Widget build(BuildContext context) {
    final title = 'Estadisticas y control';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        
     
        body: Container(  

          
          
          
                  
          decoration: new BoxDecoration(image: new DecorationImage(
                    image: new AssetImage('assets/ima/fondo4.jpg'),
                    fit: BoxFit.cover,
                  )),

         
                 
          child: new Row(
           
            

            children: <Widget>[

                              
              new Center(
                child: new Container(
                padding: const EdgeInsets.all(17),
                child: const Text(''),
                
                
              ),
              ),
            
              new Column(
                
                children: <Widget>[
                  

                  new Container(
                padding: const EdgeInsets.all(18),
                child: const Text(''),
                
              ), 

                   new Container(
                padding: const EdgeInsets.all(16),
                child: const Text(''),
                
              ), 

                  new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/44.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),
                  new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/22.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/33.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),
              
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/11.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),

              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/55.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),

              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/ima/66.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                padding: const EdgeInsets.all(25),
                child: const Text(''),
                alignment: Alignment.center,
              ),
              
                ],
              ),

              

              new Column(
                children: <Widget>[
                    
                  new Container(
                padding: const EdgeInsets.all(18),
                child: const Text(''),
                
              ), 

                 new  Container(
                padding: const EdgeInsets.all(16),
                child: const Text('Room 1',style: TextStyle(fontSize: 15),),
                //color: Colors.lightBlue,
                alignment: Alignment.center,
                
              ),
                  new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('25°',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('45%',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('-',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),

              new Container(
                padding: const EdgeInsets.all(6),
                child: const Text('Room 1 fan',style: TextStyle(fontSize: 10),),
                //color: Colors.white,
                alignment: Alignment.center,

              ),

              new Switch(value: _value1, onChanged: _onChanged1),

              new Container(
                padding: const EdgeInsets.all(6),
                child: const Text('Room 1 ligth',style: TextStyle(fontSize: 10),),
                //color: Colors.white,
                alignment: Alignment.center,
                  
              ),

              new Switch(value: _value2, onChanged: _onChanged2), 

              new Container(
                
                padding: const EdgeInsets.all(6),
                child: const Text('Room 1 ligth',style: TextStyle(fontSize: 10),),
                //color: Colors.white,
                alignment: Alignment.center,

                  
                
              ),

              new Switch(value: _value3, onChanged: _onChanged3),

                ],
              ),

              new Column(
                children: <Widget>[

                  new Container(
                padding: const EdgeInsets.all(18),
                child: const Text(''),
                
              ), 
                 new  Container(
                padding: const EdgeInsets.all(16),
                child: const Text('Kitchen',style: TextStyle(fontSize: 15),),
                //color: Colors.lightBlue,
                alignment: Alignment.center,
              ),
                  new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('16°',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('16%',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('5%',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),

              new Container(
                padding: const EdgeInsets.all(6),
                child: const Text('Kitchen 1 fan',style: TextStyle(fontSize: 10),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Switch(value: _value4, onChanged: _onChanged4),
              new Container(
                padding: const EdgeInsets.all(6),
                child: const Text('Kitchen 1 ligth',style: TextStyle(fontSize: 10),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Switch(value: _value5, onChanged: _onChanged5),
                ],
              ),
              
              new Column(
                children: <Widget>[

                  new Container(
                padding: const EdgeInsets.all(18),
                child: const Text(''),
                
              ), 
                 new  Container(
                padding: const EdgeInsets.all(16),
                child: const Text('Living',style: TextStyle(fontSize: 15),),
                //color: Colors.lightBlue,
                alignment: Alignment.center,
              ),
                  new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('18°',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('7',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),
              new Container(
                padding: const EdgeInsets.all(16),
                child: const Text('-',style: TextStyle(fontSize: 30),),
                //color: Colors.white,
                alignment: Alignment.center,
              ),

              
              


                ],
              ),

              
              

              
            ],
                  

                  
            
          ),

          
         
        )


         
          
   
      ),
    );
  }



}
