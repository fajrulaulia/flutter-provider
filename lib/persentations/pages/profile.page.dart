import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/data_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final name = TextEditingController();
  final weight = TextEditingController();
  final height = TextEditingController();

  @override
  void initState() {
    name.text = context.read<DataProvider>().getNameString();
    height.text = context.read<DataProvider>().getHeightDouble().toString();
    weight.text = context.read<DataProvider>().getWeightDouble().toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Input Your data",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              TextField(
                controller: name,
                decoration: InputDecoration(hintText: 'Enter a Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: weight,
                decoration: InputDecoration(hintText: 'Enter a Weight'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: height,
                decoration: InputDecoration(hintText: 'Enter a Height'),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    context.read<DataProvider>().setNameString(name.text);
                    context
                        .read<DataProvider>()
                        .setHeightDouble(double.parse(height.text));
                    context
                        .read<DataProvider>()
                        .setWeightDouble(double.parse(weight.text));
                  });

                  Navigator.of(context).pop();
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              )
            ],
          )),
    );
  }
}
