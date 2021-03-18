import 'package:flutter/material.dart';
import 'views/simple_shapes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Ar Sample",
      home: SimpleShapes(),
    );
  }
}