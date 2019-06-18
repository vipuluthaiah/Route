import 'package:flutter/material.dart';
// import 'b.dart';

// class HomePage extends StatefulWidget {
//     final String name ,email ,adresss;
//   final num number;

//   HomePage(
//     {
//       Key key,
//       @required
//       this.name,
//       this.email,
//       this.adresss,
//       this.number,
//     }
//   ) : super(key :key);
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

class HomePage extends StatelessWidget {
  final String name ,email ,adresss ,number;
  

  HomePage(
    {
      Key key,
      @required
      this.name,
      this.email,
      this.adresss,
      this.number,
    }
  ) : super(key :key);

  BuildContext get context => null;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: Text("PROFILE"),
),
body: Form(
  child: Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),

    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(50),
        ),
        Image(
    image: AssetImage("assets/logo.png"),
    width: 100.0,
    height: 100.0,
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text(name),
        ),
          ListTile(
          leading: Icon(Icons.email),
          title: Text(email),
        ),
          ListTile(
          leading: Icon(Icons.location_city),
          title: Text(adresss),
        ),
          ListTile(
          leading: Icon(Icons.phone),
          title: Text(number),
        ),
         ListTile(
               title: Text(""),
               trailing: Icon(Icons.add_to_home_screen),
                onTap: ()=> Navigator.of(context).pushNamed("/b"),
             ),
        // ButtonTheme(
        //         height: 45.0,
        //         minWidth: 180.0,
        //         child: RaisedButton(
        //           onPressed: _next1,
        //           color: Colors.redAccent,
        //           child: Text(
        //             'NEXT',
        //             style: TextStyle(
        //            color: Colors.white,
        //               ),
        //           ),
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20.0)
                    
        //           ),
        //         ),
        //       ),
      ],
    
    ),
    
  ),

),

    );
  }
  // _next1(){
   

    
  //     //sending to next
  //     Navigator.push(context,
  //     MaterialPageRoute(
  //       builder: (context) => B(
  //         // name:name,
  //         // email:email,
  //         // adresss: adresss,
  //         // number:number,

  //       ),
  //     )
  //     );
  //   }



  
    // else{
    //   setState(() {
    // autovalidate = true;
    //   });
    // }
  }
