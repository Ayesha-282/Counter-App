import 'package:flutter/material.dart';


void main() {
  runApp(
    Center(
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme:  ThemeData(
          primarySwatch: Colors.green
      ),
      home:  counter_App(),
    );
  }
}
class counter_App extends StatefulWidget {
  @override
  CounterDemo createState() =>  CounterDemo();
}
class CounterDemo extends State< counter_App> {
  int num = 0;

  void Count_Up() {
    setState(() {
      num++;
    });
  }

  void Count_down() {
    setState(() {
      if (num != 0)
        num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title:  Text(" Counter App" ),



        centerTitle: true,
      ),
       //backgroundColor: Colors.grey[300],
      body:  Container(


        child:  Center(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              FloatingActionButton(


                onPressed: Count_Up,
                child:  Icon(Icons.add, color: Colors.white,size: 30,),
                backgroundColor: Colors.green,),

              Text('$num',

                  style:  TextStyle(fontSize: 60.0)),

              FloatingActionButton(
                onPressed: Count_down,
                child: Icon(
                  Icons.remove_outlined,
                  size: 30,
                ),
                backgroundColor: Colors.green,),


            ],
          ),
        ),
      ),
    );
  }
}
