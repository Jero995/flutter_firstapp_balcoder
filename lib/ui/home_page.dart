import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nombre = "Jero";
  int count = 0;
  bool isRed = true;
  double decimal = 3.5;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nombre + ", Hola", style: TextStyle(color: Colors.white),),
        ),
        body: Container(
        
          child: Center(child: Text("Contador: "
          +count.toString()+ " veces", 
          style: TextStyle(fontSize: 57),),),
          color: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.upgrade),
          onPressed: () {
            setState(() {
                          count = count+1;

            });

            print(count); 
            print("Contador");
          },
        ));
  }
}