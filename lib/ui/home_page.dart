import 'package:flutter/material.dart';
import 'package:flutter_firstapp_balcoder/ui/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nombre = "Jerònimo";
  int count = 0;
  double calificacion = 7.2;
  bool vof = false;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _widht = MediaQuery.of(context).size.width;

    print(_height);
    print(_widht);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("JPM Inc.")),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
                child: Text(
              count.toString(),
              style: TextStyle(color: Colors.green[800], fontSize: 24),
            )),
            GestureDetector(
              onTap: () {
                print("clic n");
                setState(() {
                  vof = !vof;
                });
              },
              child: Container(
                height: _height * 0.5,
                width: _widht * 0.5,
                color: vof
                    ? Colors.red
                    : count >= 2
                        ? Colors.green
                        : Colors.orange,
              ),
            ),
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return SecondPage();
                  }));
                },
                child: Container(
                  height: _height * 0.1,
                  width: _widht * 0.1,
                  color: Colors.purple,
                ),
              )
            ])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count = count + 1;
          });
          print(count);
        },
        child: Icon(Icons.verified),
      ),
    );
  }
}
