import 'package:flutter/material.dart';

class C extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PAYMENT'),
      ),
      body: Container(
    child: Center(
      
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/logo.png"),
            
          ),
          Center(child: Text("PAYMENT")),
        ],
      ),
    ),
  ),
    );
  }
}