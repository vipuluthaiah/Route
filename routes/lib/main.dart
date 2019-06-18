import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';
import 'b.dart';
import 'c.dart';
import 's.dart';
import 'r.dart';
import 'sh.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOGIN",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
       
      ),
      home: Login(),
        routes: <String,WidgetBuilder>{
          "/h":(BuildContext context) => HomePage(name: null,),
          "/b" :(BuildContext context) => B(),
           "/c" :(BuildContext context) => C(),
            "/sh" :(BuildContext context) => Sh(),
               "/r" :(BuildContext context) => R(),
                "/se" :(BuildContext context) => S(),
       },
    );
    
    
  }
}