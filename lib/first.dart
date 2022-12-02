// import 'package:exam2/homepage.dart';
import 'package:exam_2/second.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  sl()async{
   await Future.delayed(Duration(seconds: 3));
   Navigator.push(context, MaterialPageRoute(builder: (context) {
     return homepage();
   },));
  }
  @override
  void initState() {
  sl();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[
              SizedBox(height: 300,),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/logo.jpg"))),
          ),
            Text("An Innovative Concept",style: TextStyle(fontSize: 15)),


            Text("Forcasting",style: TextStyle(color: Color(0xFF47BFDF),fontSize: 50)),
          ],
        ),
      ),
    );
  }


}
