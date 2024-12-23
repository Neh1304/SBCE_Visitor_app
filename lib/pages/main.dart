import 'package:flutter/material.dart';
import 'package:sbceapp/pages/menu.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white38,
        appBar: AppBar(
          title: Text("SBCE Visitor's log"),
          backgroundColor: Colors.white30,
        ),
        body: Menusys(),
      ),
    );
  }
}
