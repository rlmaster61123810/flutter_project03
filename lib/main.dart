import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/': (context) => const FistPage(),
        '/Second': (context) => const SecondPage(),
      },
    );
  }
}

class FistPage extends StatelessWidget {
  const FistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fist Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fist Page",
                  style: TextStyle(fontSize: 26, color: Colors.teal[300])),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, '/Second')},
                  child: Text("Go to page 2")),
            ],
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Second Page",
                  style: TextStyle(fontSize: 26, color: Colors.green[900])),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, '/')},
                  child: Text("Go to page 1")),
            ],
          ),
        ));
  }
}
