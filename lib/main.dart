import 'package:flutter/material.dart';
import 'package:flutter_provider/persentations/pages/home.page.dart';
import 'package:flutter_provider/provider/data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DataProvider())
        ],
        child: MaterialApp(
          title: "Flutter Provider",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
