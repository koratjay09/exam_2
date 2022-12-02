import 'package:exam_2/fifth.dart';
import 'package:exam_2/fourth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class third extends StatefulWidget {
  Database? database;

  third(this.database);


  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  bool isCountry = false;
  String selectCountry = "Select Country";
  String ?currentCountry;

// bool a=false;
  String countryList = "Country";
  bool val = false;
  bool passchbox = true;

  signup() {
    if (t1.text == "") {
      isCountry = false;
    } else if (t2.text == "") {
      isCountry = false;
    } else if (t3.text == "") {
      isCountry = false;
    } else if (t4.text == "") {
      isCountry = false;
    } else if (selectCountry == "") {
      isCountry = false;
    } else {
      setState(() {
        isCountry = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(15),
            child: SafeArea(child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage("images/logo.jpg"))),
                ),
                SizedBox(height: 10,),
                Text("Forcasting",
                    style: TextStyle(color: Color(0xFF101010), fontSize: 30)),
                SizedBox(height: 10,),
                Text("Enter your email address and password",
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 10,),
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
                  decoration: InputDecoration(hintText: "Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
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
                  decoration: InputDecoration(hintText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)

                  ),
                  child: DropdownButton(
                      isExpanded: true,
                      value: countryList,
                      onChanged: (String? value) {
                        setState(() {
                          currentCountry = value ?? "";
                        });
                        signup();
                      },
                      onTap: () {
                        setState(() {
                          signup();
                        });
                      },
                      hint: Text(selectCountry),
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      items: [
                        DropdownMenuItem(child: Text("Country"),value: "Country",),
                        DropdownMenuItem(child: Text("India"), value: "India",),
                        DropdownMenuItem(child: Text("USA"), value: "USA"),
                        DropdownMenuItem(child: Text("Russia"), value: "Russia"),
                        DropdownMenuItem(child: Text("Australia"), value: "Australia"),
                      ]),

                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                TextField(
                  controller: t3,
                  onChanged: (value) {
                    signup();
                  },
                  onTap: () {
                    setState(() {
                      signup();
                    });
                  },
                  decoration: InputDecoration(hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
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
                  controller: t4,
                  obscureText: passchbox,
                  decoration: InputDecoration(hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: val,
                      onChanged: (value) {
                        setState(() {
                          val = value!;
                          passchbox = !passchbox;
                        });
                      },
                    ),
                    Text("Remember me"),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                InkWell(
                    onTap: () async {
                      String name = t1.text;
                      String number = t2.text;
                      String email = t3.text;
                      String password = t4.text;
                      String count = currentCountry!;
                      String qry = "insert into Test values(null,'$name','$number','$email','$password','$count')";
                      print(qry);
                      int r_id;
                      r_id = await widget.database!.rawInsert(qry);
                      print(" row_id= $r_id");
                      t1.text = "";
                      t2.text = "";
                      t3.text = "";
                      t4.text = "";
                      selectCountry = currentCountry!;
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return fourth(widget.database);
                      },));
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
                            "Signup",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?",
                      style: TextStyle(fontSize: 20,),),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) {
                        return fifth(widget.database);
                      },));
                    }, child: Text("Login", style: TextStyle(fontSize: 20),))
                  ],)


              ],
            ))),)
    );
  }
}
