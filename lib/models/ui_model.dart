import 'package:flutter/material.dart';

class UiModel {
  Widget get appBar => AppBar(
        title: Text("Flutter Ar Saple", style: TextStyle(color: Colors.blueGrey)),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      );

  Widget getScreen({Widget screen}) => Scaffold(appBar: appBar, body: screen);
}
