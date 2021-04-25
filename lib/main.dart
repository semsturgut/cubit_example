import 'package:cubit_example/screens/cubit_example_screen/cubit_example_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Example',
      home: CubitExampleScreen(),
    );
  }
}
