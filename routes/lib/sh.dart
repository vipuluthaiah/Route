import 'package:flutter/material.dart';

class Sh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SHARE'),
      ),
      body: Container(
    child: Center(
      
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/logo.png"),
            
          ),
          Center(child: Text("SHARE")),
        ],
      ),
    ),
  ),
    );
  }
}