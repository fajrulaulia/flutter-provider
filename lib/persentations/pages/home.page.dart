import 'package:flutter/material.dart';
import 'package:flutter_provider/persentations/pages/print.page.dart';
import 'package:flutter_provider/persentations/pages/profile.page.dart';
import 'package:flutter_provider/provider/data_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, props, _) => Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's check your Body",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Name : " +
                      (props.getNameString() == null
                          ? "-"
                          : props.getNameString().toString()),
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Height : " +
                      (props.getHeightDouble() == null
                          ? "-"
                          : props.getHeightDouble().toString()),
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Weight : " +
                      (props.getWeightDouble() == null
                          ? "-"
                          : props.getWeightDouble().toString()),
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      },
                      child: Text(
                        "Set Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrintPage()),
                        );
                      },
                      child: Text(
                        "Print Report ",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
