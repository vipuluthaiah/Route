import 'package:flutter/material.dart';

class B extends StatelessWidget {

  B(
    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOME'),
      ),
        drawer: Drawer(
         child: ListView(
           children: <Widget>[
             UserAccountsDrawerHeader(
               accountName: Text("Vipul_Uthaiah"),
               accountEmail: Text("drealtic.com@gmail.com"),
               currentAccountPicture: CircleAvatar(
                 backgroundColor: Colors.black,
                 child: Text("VU"),
               ),
             ),
             ListTile(
               title: Text("HOME"),
               trailing: Icon(Icons.home),
                onTap: ()=> Navigator.of(context).pushNamed("/b"),
             ),
             ListTile(
               title: Text("INSIGHT"),
               trailing: Icon(Icons.graphic_eq),
               onTap: ()=> Navigator.of(context).pushNamed("/r"),
             ),
             ListTile(
               title: Text("PAYMENT"),
               trailing: Icon(Icons.payment),
                onTap: ()=> Navigator.of(context).pushNamed("/c"),
             ),
             ListTile(
               title: Text("SHARE"),
               trailing: Icon(Icons.share),
                onTap: ()=> Navigator.of(context).pushNamed("/sh"),
             ),
             ListTile(
               title: Text("SETTINGS"),
               trailing: Icon(Icons.settings),
                onTap: ()=> Navigator.of(context).pushNamed("/se"),
             ),
             ListTile(
               title: Text("CLOSE"),
               trailing: Icon(Icons.close),
                onTap: ()=> Navigator.of(context).pop(  ),
             ),
           ],
         ),
       ),
          body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("HOME PAGE")
         ],
       ),
     ),
  //     body: Container(
  //   child: Center(
      
  //     child: Column(
  //       children: <Widget>[
  //         Image(
  //           image: AssetImage("assets/logo.png"),
            
  //         ),
  //         Center(child: Text("SHARE")),
  //       ],
  //     ),
  //   ),
  // ),
    );
  }
}