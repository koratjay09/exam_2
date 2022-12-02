// import 'package:exam2/homepage.dart';
import 'package:exam_2/seventh.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class watherhomelist extends StatefulWidget {
  const watherhomelist({Key? key}) : super(key: key);

  @override
  State<watherhomelist> createState() => _watherhomelistState();
}

class _watherhomelistState extends State<watherhomelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF47BFDF), Color(0xFF4A91FF)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 60,width: 60,
                    child: BoxedIcon(WeatherIcons.day_sunny,color: Colors.amber,size:30,),
                    ),
                    Container(
                      child: Text("Sunny",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.cloud_refresh,color: Colors.amber,size:30),
                    ),
                    Container(
                      child: Text("Partly",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.cloud,color: Colors.amber,size:30),
                    ),
                    Container(
                      child: Text("Cloudy",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.rain,color: Colors.amber,size:30),
                    ),
                    Container(
                      child: Text("Rainy",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.snow,color: Colors.amber,size:30,),
                    ),
                    Container(
                      child: Text("Snow",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.storm_showers,color: Colors.amber,size:30,),
                    ),
                    Container(child: Text("Stromy",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  seventh();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.thunderstorm,color: Colors.amber,size:30,),
                    ),
                    Container(
                      child: Text("Thunder",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
