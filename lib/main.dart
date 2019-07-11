import 'package:flutter/material.dart';
import 'animation_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('animation demo'),
        ),
        body: HomePage(),
      ),
    );
  }
}
