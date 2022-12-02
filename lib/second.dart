import 'package:exam_2/fifth.dart';
import 'package:exam_2/third.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Database ?database;
  String cou="Country";
  @override
  void initState() {
    super.initState();
    go();
  }
  go ()
  async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');


// open the database
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE Test (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,number TEXT,email TEXT,password TEXT,count TEXT)');
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: double.infinity,width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF47BFDF),Color(0xFF4A91FF)])),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        margin: EdgeInsets.only(top: 500,left: 20,right: 20,bottom: 20),
        padding: EdgeInsets.all(30),
        height: 100,width: 100,
        child: Column(

          children: [
            Text("Expore global map of wind,\nweather, and ocean conditions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Planing your trip become more easier with\nideate weather app. you can instantly see the \nwhole word weather within few second",style: TextStyle(fontSize: 12,color: Colors.grey),),
            SizedBox(height: 100,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return third(database);
                },));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(colors: [Color(0xFF47BFDF),Color(0xFF4A91FF)])),
                child: Center(child: Text("Get Started",style: TextStyle(
                    color: Colors.white
                ),)),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"),
                InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return fifth(database);
                },));
                },
                  child: Text("Login",style: TextStyle(color: Colors.blue),),
                )
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }

}
