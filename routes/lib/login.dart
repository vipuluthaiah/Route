import 'package:flutter/material.dart';
import 'homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _key = new GlobalKey();

  bool autovalidate = false;

  String name ,email ,adresss , number;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text("SIGNUP"),
      ),
      body: SingleChildScrollView(
              child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15)
                ,),
                Image(
                  image: AssetImage("assets/logo.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
leading: Icon(Icons.person_pin),
title: TextFormField(
  validator: (input){
    if (input.isEmpty){
        return "ENTER THE FUCKING NAME";
    }
  },
  decoration: InputDecoration(
    labelText : 'NAME'
  ),
  onSaved: (input) => name = input,
),
                ),

                   ListTile(
leading: Icon(Icons.email),
title: TextFormField(
  validator: (input){
    if (input.isEmpty){
        return "ENTER THE EMAIL U BLIND";
    }
  },
  decoration: InputDecoration(
    labelText : 'EMAIL'
  ),
  onSaved: (input) => email= input,
),
                ),
                  ListTile(
leading: Icon(Icons.phone),
title: TextFormField(
  validator: (input){
    if (input.isEmpty){
        return "ENTER THE NUMBER";
    }
  },
  decoration: InputDecoration(
    labelText : 'NUMBER'
  ),
  onSaved: (input) => number = input ,
),
                ),

                   ListTile(
leading: Icon(Icons.location_city),
title: TextFormField(
  validator: (input){
    if (input.isEmpty){
        return "ENTER THE ADRESS";
    }
  },
  decoration: InputDecoration(
    labelText : 'ADDRESS'
  ),
  onSaved: (input) => adresss = input,
),
                ),
              ButtonTheme(
                height: 45.0,
                minWidth: 180.0,
                child: RaisedButton(
                  onPressed: _next,
                  color: Colors.redAccent,
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                   color: Colors.white,
                      ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
              Center(
                child: Padding(
                 
                  padding:const EdgeInsets.only(top: 10.0)
                  ,),
              ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  _next(){
    if(_key.currentState.validate()){

      _key.currentState.save();
      //sending to next
      Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => HomePage(
          name:name,
          email:email,
          adresss: adresss,
          number:number,

        ),
      )
      );
    }
    // else{
    //   setState(() {
    // autovalidate = true;
    //   });
    // }
  }
}