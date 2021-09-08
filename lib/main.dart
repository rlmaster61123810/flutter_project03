import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class pageArguments {
  final String title;
  final String message;
  pageArguments(this.title, this.message);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: FirstPage(),
      routes: {
        '/': (context) => const FirstPage(),
        // '/second': (context) => const SecondPage(),
        SecondPage.routeName: (context) => const SecondPage(),
        ThirdPage.routeName: (context) => const ThirdPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "First Page",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(context, SecondPage.routeName,
                          arguments: pageArguments(
                              "From First Page", "Hello Second Page"))
                    },
                child: Text("Go to Page 2")),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const routeName = "/SecondPage";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as pageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              args.message,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              child: Text(
                "Go to Page 1",
              ),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () async {
                final result =
                    await Navigator.pushNamed(context, ThirdPage.routeName);
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('$result')));
              },
              child: Text("Go to Page 3"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const routeName = "/ThirdPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Third Page",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {Navigator.pop(context, "Yes.")},
                  child: Text("YES."),
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => {Navigator.pop(context, "No!!")},
                  child: Text("NO!!"),
                  style: ElevatedButton.styleFrom(primary: Colors.amber[900]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
