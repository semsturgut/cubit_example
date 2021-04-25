import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  @override
  _SetStateScreenState createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            onChanged: (value) {
              setState(() {
                text = value;
              });
            },
          ),
          Text(text)
        ],
      ),
    );
  }
}
