import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static final String routeName = '/detail';
  DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เมนูอาหาร 1 '),
      ),
      body: Center(
        child: Text('รายละเอียดเมนูอาหาร 1'),
      ),
    );
  }
}
