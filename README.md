# flutter_provider

Simple flutter state management using Provider

<img src="https://raw.githubusercontent.com/fajrulaulia/flutter-provider/master/playofoverview.gif"  height="700" />


## Installation

add package in pusbec.yml, you can going to https://pub.dev/packages/provider/install
``` yml
dependencies:
  provider: [Latest Version]

```

## Usage

create and register provider, use this like boss
``` dart
import 'package:flutter/foundation.dart';

class NameOfPrvider extends ChangeNotifier {
  String _name;

  void setNameString(String name) {
    this._name = name;
    notifyListeners();
  }

  String getNameString() {
    return this._name;
  }
..........

```

to set new state and publish it to global, you can add this in listener event of widget.

 ``` dart
 context.read<DataProvider>().setNameString("Haii, this value will set on global");
 ```
 
 
 to get state, you wrapping use consumer or you can add this in iniState()
 
 ``` dart
   void initState() {
    name= context.read<DataProvider>().getNameString();
  }

 ```
 
 ## Notes
Check my repository and clone, dont forget to `flutter run`
 ## Author
 Fajrul Aulia
