import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Counter(),
    ));

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int c = 0;
  bool val = false;

  @override
  Widget build(BuildContext context) {
    Color getbackcolor = (val) ? Colors.black : Colors.white;
    Color getappbarcolor = (val) ? Colors.blue[900] : Colors.blue;
    Color getfloatingbuttoncolor = (val) ? Colors.brown[50] : Colors.brown[100];
    Color gettextcolor = (val) ? Colors.grey : Colors.black;
    return Scaffold(
      backgroundColor: getbackcolor,
      appBar: AppBar(
        backgroundColor: getappbarcolor,
        actions: <Widget>[
          Switch(
            activeColor: Colors.black,
            value: val,
            onChanged: (bool newval) {
              setState(() {
                val = newval;
              });
            },
          )
        ],
        title: Text(
          'Counter app'.toUpperCase(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Counter : '.toUpperCase(),
              style: TextStyle(
                color: gettextcolor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '$c',
              style: TextStyle(
                color: gettextcolor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                c++;
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: getfloatingbuttoncolor,
            elevation: 0,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                c--;
              });
            },
            child: Icon(
              Icons.remove,
              color: Colors.black,
            ),
            backgroundColor: getfloatingbuttoncolor,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
