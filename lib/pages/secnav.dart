import 'package:flutter/material.dart';
import 'package:sbceapp/pages/visitoradd.dart';
import 'package:sbceapp/pages/viewall.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuSystemState();
}

class _MenuSystemState extends State<Menu> {
  final List<Widget> pages = [Addv(), ViewAll()];
  int currentIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visitor App"),
        leading: GestureDetector(
          onTap: () {
            print("Logo Clicked");
          },
          child: Icon(Icons.account_box),
        ),
      ),
      body: pages[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexValue,
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Add Visitor"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_comfortable_rounded),
              label: "View All Visitor")
        ],
      ),
    );
  }
}
