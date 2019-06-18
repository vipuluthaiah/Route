import 'package:flutter/material.dart';

class R extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text('INSIGTS'),
      ),
      body: Container(
    child: Center(
      
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/logo.png"),
            
          ),
          Center(child: Text("INSIGHTS")),
        ],
      ),
    ),
  ),
    );
  }
}