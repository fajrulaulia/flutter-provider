import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/data_provider.dart';
import 'package:provider/provider.dart';

class PrintPage extends StatefulWidget {
  @override
  _PrintPageState createState() => _PrintPageState();
}

class _PrintPageState extends State<PrintPage> {
  String name = "Null";

  @override
  void initState() {
    name = context.read<DataProvider>().getNameString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Print"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "your body is ok, but, i dont know how to calculate BMI, if you want help me, pelase Fork and Merge"),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Back"),
              )
            ],
          ),
        ));
  }
}
