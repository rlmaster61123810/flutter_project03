import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'DOG RANK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/p01.jpg")),
              title: Text("Dog Rank", style: TextStyle(color: Colors.white)),
              subtitle: Text("class 1", style: TextStyle(color: Colors.white)),
              trailing: Wrap(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ]),
              tileColor: Colors.indigo[900],
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/p02.png")),
              title: Text("Dog Rank", style: TextStyle(color: Colors.white)),
              subtitle: Text("class 2", style: TextStyle(color: Colors.white)),
              trailing: Wrap(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ]),
              tileColor: Colors.indigo[800],
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/p03.png")),
              title: Text("Dog Rank", style: TextStyle(color: Colors.white)),
              subtitle: Text("class 3", style: TextStyle(color: Colors.white)),
              trailing: Wrap(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ]),
              tileColor: Colors.indigo[700],
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/p04.png")),
              title: Text("Dog Rank", style: TextStyle(color: Colors.white)),
              subtitle: Text("class 4", style: TextStyle(color: Colors.white)),
              trailing: Wrap(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ]),
              tileColor: Colors.indigo[600],
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/p05.jpg",
                ),
              ),
              title: Text("Dog Rank", style: TextStyle(color: Colors.white)),
              subtitle: Text("class 5", style: TextStyle(color: Colors.white)),
              trailing: Wrap(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ]),
              tileColor: Colors.indigo[600],
            ),
          ),
        ],
      ),
    );
  }
}
