import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Covid 19 News'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(widget.title),
      )),
      body: Center(
        child:
            ListView(padding: EdgeInsets.only(top: 150.0), children: <Widget>[
          Container(
              child: Center(
                  child: Text('All Cases : 272691',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      )))),
          Container(
              child: Center(
                  child: Text('All Deaths : 11310',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22.0,
                      )))),
          Container(
              child: Center(
                  child: Text('All Recovered : 90618',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 22.0,
                      )))),
          Container(
              child: Center(
                  child: Text('All Active Cases : 170763',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 22.0,
                      )))),
          Container(
              padding: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input A Country",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                  ),
                ),
              )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                    color: Colors.red,
                    child: Text('Search',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    onPressed: () {}),
              ),
              Container(width: 10.0),
              Expanded(
                child: RaisedButton(
                    color: Colors.red,
                    child: Text(
                      'All Information',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {}),
              )
            ],
          )),
          Expanded(
              child: Expanded(
            child: RaisedButton(
              color: Colors.red,
              child: Text(
                'Update Of Sri Lanka',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          )),
          Container(
              child: Center(
                  child: Text('IMPORTANT',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                      )))),
          Container(
              child: Center(
                  child: Text('Search "South Korea" as "Korea"',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )))),
          Container(
              width: 100.0,
              child: RaisedButton(
                color: Colors.yellow,
                child: Text('Next Page'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
              ))
        ]),
      ),
    );
  }
}
