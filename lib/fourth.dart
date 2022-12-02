import 'package:flutter/material.dart';
import 'package:sqflite_common/sqlite_api.dart';

import 'fifth.dart';

class fourth extends StatefulWidget {
  Database? database;
  fourth(this.database);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/logo.jpg"))),
            ),
            SizedBox(height: 10,),
            Text("Forcasting",style: TextStyle(color: Color(0xFF101010),fontSize: 30)),
            Padding(padding: EdgeInsets.only(top: 100)),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              width: 200,
              child: Image.asset("images/a.png"),
            ),
            Text("Congratulations",style: TextStyle(fontSize: 30)),
            SizedBox(
              height: 50,
            ),
            Text("Your Account Created \n          Succesfully",style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 180,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return fifth(widget.database);
                },));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_left,size:50,),
                  Text("Back to Login",style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
