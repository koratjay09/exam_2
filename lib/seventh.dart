import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class seventh extends StatefulWidget {
  const seventh({Key? key}) : super(key: key);

  @override
  State<seventh> createState() => _seventhState();
}

class _seventhState extends State<seventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF47BFDF), Color(0xFF4A91FF)])),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30,
                ),
                Text(
                  "Semarang",
                  style: TextStyle(fontSize: 30),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.power_settings_new,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            BoxedIcon(
              WeatherIcons.cloud,
              color: Colors.amber,
              size: 120,
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Today, 26 November",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " 29°",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: Colors.white),
                    ),
                    Center(
                      child: Text(
                        "Cloudy",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 2,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "Time",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "06:00 AM",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "Tempertature",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "24°",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "MaxTemperature",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "28°",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "MinTemperature",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "21°",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "Condition",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "Windy",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "WindSpeed",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "15 km/h",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 15,right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "Humidity",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(),
                          Text(
                            "54%",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Text(
                "Forecast report  >",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      )),
    );
  }
}
