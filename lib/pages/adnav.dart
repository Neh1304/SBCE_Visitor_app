import 'package:flutter/material.dart';
import 'package:sbceapp/pages/viewall.dart';

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _MenuSystemState();
}

class _MenuSystemState extends State<Menu1> {
  final List<Widget> pages = [ViewAll()];
  int currentIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visitor's App"),
        leading: GestureDetector(
          onTap: () {
            print("Click detected");
          },
          child: Icon(Icons.account_box),
        ),
      ),
      body: pages[currentIndexValue],
    );
  }
}
