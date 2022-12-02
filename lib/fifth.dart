import 'package:exam_2/sixth.dart';
import 'package:exam_2/third.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_common/sqlite_api.dart';
class fifth extends StatefulWidget {
  Database? database;
  fifth(this.database);



  // const fifth(Database? database, {Key? key}) : super(key: key);

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  List email = [];
  List password = [];
  List id = [];
  bool val = false;
  bool passchbox = true;
  bool isCountry = false;
  signup() {
    if (t1.text == "") {
      isCountry = false;
    } else if (t2.text == "") {
      isCountry = false;
    } else {
      setState(() {});
        isCountry = true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Padding(padding: EdgeInsets.all(15),
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
              SizedBox(height: 10,),
              Text("Enter your email address and password",style: TextStyle(fontSize: 15,color: Color(0xFF808080))),
              SizedBox(height: 10,),
              SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (value) {
                  signup();
                },
                onTap: () {
                  setState(() {
                    signup();
                  });
                },
                controller: t1,
                decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                onChanged: (value) {
                  signup();
                },
                onTap: () {
                  setState(() {
                    signup();
                  });
                },
                controller: t2,
                obscureText: passchbox,
                decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
              Row(
                children: [
                  Checkbox(
                    value: val,
                    onChanged:(value) {
                      setState(() {
                        val = value!;
                        passchbox=!passchbox;
                      });
                    },
                  ),
                  Text("Remember me"),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              InkWell(
                onTap: () async {
                  List<Map> list = [];
                  List<Map>? test = [];
                  String str1=t1.text;
                  String str2=t2.text;
                  String qry = "select * from Test";
                  list = await widget.database!.rawQuery(qry);
                  print("list = $list");
                  test=list as List<Map>?;
                  test!.forEach((element) {
                    id.add(element['id']);
                    email.add(element['email']);
                    password.add(element['password']);
                    if(str1==element['email'] && str2==element['password']){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return watherhomelist();
                      },));
                    }
                  });

                },
                child: Ink(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: isCountry
                          ? LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff47BFDF),
                            Color(0xff4A91FF)
                          ])
                          : LinearGradient(
                          colors: [Colors.grey, Colors.grey])),
                  child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ),),
              SizedBox(height: 230,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account?",style: TextStyle(fontSize: 20,),),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return third(widget.database);
                    },));
                  }, child: Text("Signup",style: TextStyle(fontSize: 20),))
                ],)
            ],
          ),
        ),
      )
    );
  }
}
