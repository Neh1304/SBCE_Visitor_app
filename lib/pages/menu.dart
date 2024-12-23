import 'package:flutter/material.dart';
import 'package:sbceapp/pages/adlogin.dart';
import 'package:sbceapp/pages/seclogin.dart';

class Menusys extends StatelessWidget {
  const Menusys({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.fSah435QKdUfzvS4_sX4dAHaHa?rs=1&pid=ImgDetMain"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Security()),
                );
              },
              child: Text("SECURITY LOGIN"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Admin()),
                );
              },
              child: Text("ADMIN LOGIN"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
